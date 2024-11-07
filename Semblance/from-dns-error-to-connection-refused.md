@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $  kubectl exec frontend-pod -- wget --spider --timeout=1 backend-service
Connecting to backend-service (10.109.228.146:80)
wget: can't connect to remote host (10.109.228.146): Connection refused
command terminated with exit code 1
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ 


The `Connection refused` error indicates that the `frontend-pod` is able to resolve the `backend-service` to an IP address, but it cannot establish a connection to the service on port 80. Here are some steps to troubleshoot this issue:

1. **Service and Pod Ports**:
   - Ensure that the `backend-pod` is listening on the correct port (8080) and that the service is correctly mapping port 80 to 8080.
   - Verify the container in `backend-pod` is actually running a service on port 8080.

2. **Service and Endpoints**:
   - Check if the service has the correct endpoints:
     ```sh
     kubectl get endpoints backend-service -n default
     ```
   - The output should list the IP addresses and ports of the `backend-pod`.

@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl get endpoints backend-service -n default
NAME              ENDPOINTS         AGE
backend-service   10.244.0.4:8080   2m46s
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ 

3. **Pod Logs**:
   - Check the logs of the `backend-pod` to see if there are any errors or if the service is running correctly:
     ```sh
     kubectl logs backend-pod -n default
     ```

4. **Network Policies**:
   - Ensure there are no network policies that might be blocking traffic between the `frontend-pod` and `backend-pod`.

5. **Pod Status**:
   - Verify that the `backend-pod` is running and ready:
     ```sh
     kubectl get pods -n default -o wide
     ```

6. **Service Configuration**:
   - Double-check the service configuration to ensure it is correct:
     ```sh
     kubectl describe svc backend-service -n default
     ```

Here’s a quick checklist to verify:

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
        ports:
          - containerPort: 8080
  ```

Make sure the `backend-pod` is exposing port 8080 as specified in the service definition. If the `backend-pod` is not running a service on port 8080, the connection will be refused.

Let me know if you need further assistance!

