front end can not reach back end with the service

kubectl exec frontend-pod -- wget --spider --timeout=1 backend-pod

apiVersion: v1
kind: Pod
metadata:
  name: backend-pod
  labels:
    role: backend
    policytask: "true"
spec:
  containers:
    - name: backend
      image: busybox
      command: ["sleep", "3600"]


apiVersion: v1
kind: Service
metadata:
  name: backend-service
  labels:
    role: backend
    policytask: "true"
spec:
  selector:
    role: backend
  ports:
    - protocol: TCP
      port: 80
      targetPort: 8080

apiVersion: v1
kind: Pod
metadata:
    name: frontend-pod
    labels:
        role: frontend
        policytask: "true"
spec:
    restartPolicy: Always
    containers:
    - name: frontend
      image: busybox
      command: ["sleep", "3600"]

      ================

      The issue seems to be with the service name you're using in the `wget` command. The service name should be `backend-service` instead of `backend-pod`. Here’s how you can update your command:

```sh
kubectl exec frontend-pod -- wget --spider --timeout=1 backend-service
```

Additionally, ensure that the service is correctly set up and that the `backend-pod` is selected by the service. Here’s a quick checklist:

1. **Service Name**: Ensure you are using the correct service name (`backend-service`).
2. **Service Selector**: Verify that the service selector matches the labels on the `backend-pod`.
3. **Pod Labels**: Ensure the `backend-pod` has the correct labels that match the service selector.

Your service and pod definitions look correct, but just to confirm, here’s a summary:

- **Service Definition**:
  ```yaml
  apiVersion: v1
  kind: Service
  metadata:
    name: backend-service
    labels:
      role: backend
      policytask: "true"
  spec:
    selector:
      role: backend
    ports:
      - protocol: TCP
        port: 80
        targetPort: 8080
  ```

- **Backend Pod Definition**:
  ```yaml
  apiVersion: v1
  kind: Pod
  metadata:
    name: backend-pod
    labels:
      role: backend
      policytask: "true"
  spec:
    containers:
      - name: backend
        image: busybox
        command: ["sleep", "3600"]
  ```

- **Frontend Pod Definition**:
  ```yaml
  apiVersion: v1
  kind: Pod
  metadata:
    name: frontend-pod
    labels:
      role: frontend
      policytask: "true"
  spec:
    restartPolicy: Always
    containers:
      - name: frontend
        image: busybox
        command: ["sleep", "3600"]
  ```

Try running the updated `wget` command and see if it resolves the issue. Let me know if you need further assistance!

===================================


@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl exec frontend-pod -- wget --spider --timeout=1 backend-service
wget: bad address 'backend-service'
command terminated with exit code 1
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ 

