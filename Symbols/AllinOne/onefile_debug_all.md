#All in one

kubectl exec frontend-pod -- wget --spider --timeout=1 backend-service

################# mini kube ######################

minikube start

minikube status

@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ minikube status
minikube
type: Control Plane
host: Running
kubelet: Running
apiserver: Running
kubeconfig: Configured

################# front end pod ######################
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

> kubectl run frontend-pod --image=busybox --restart=Always --labels="role=frontend,policytask=true" --command -- sleep 3600

################# front end pod ######################

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

> kubectl run backend-pod --image=busybox --labels="role=backend,policytask=true" --command -- sleep 3600

###################################### deployment backend #################################################

apiVersion: apps/v1
kind: Deployment
metadata:
  name: backend-service
  labels:
    role: backend
    policytask: "true"
spec:
  replicas: 3
  selector:
    matchLabels:
      role: backend
      policytask: "true"
  template:
    metadata:
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
> kubectl create deployment backend-service --image=busybox --replicas=3 --port=8080 --labels="role=backend,policytask=true" --command -- sleep 3600

###################################### deployment front end #################################################

apiVersion: apps/v1
kind: Deployment
metadata:
  name: frontend-pod
  labels:
    role: frontend
    policytask: "true"
spec:
  replicas: 3
  selector:
    matchLabels:
      role: frontend
      policytask: "true"
  template:
    metadata:
      labels:
        role: frontend
        policytask: "true"
    spec:
      restartPolicy: Always
      containers:
      - name: frontend
        image: busybox
        command: ["sleep", "3600"]

> kubectl create deployment frontend-pod --image=busybox --replicas=3 --labels="role=frontend,policytask=true" --command -- sleep 3600

###################################### service backend  #################################################
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

> kubectl expose deployment backend-service --type=ClusterIP --port=80 --target-port=8080 --selector="role=backend"
> kubectl expose deployment backend-service --type=ClusterIP --port=80 --target-port=8080 --selector="role=backend,policytask=true"



############################ BULK RUN ##########################################
<!-- kubectl run frontend-pod --image=busybox --restart=Always --labels="role=frontend,policytask=true" --command -- sleep 3600
kubectl run backend-pod --image=busybox --labels="role=backend,policytask=true" --command -- sleep 3600 -->
POD AND DEPLOYMENT DOES NOT MAKE SENSE

-- kubectl create deployment backend-pod --image=busybox --replicas=3 --port=8080 --labels="role=backend,policytask=true" --command -- sleep 3600
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl create deployment backend-pod --image=busybox --replicas=3 --port=8080 -- sleep 3600
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl label deployment backend-pod role=backend policytask=true

-- kubectl create deployment frontend-pod --image=busybox --replicas=3 --labels="role=frontend,policytask=true" --command -- sleep 3600
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl create deployment frontend-pod --image=busybox --replicas=3 -- sleep 3600
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl label deployment frontend-pod role=frontend policytask=true

kubectl expose deployment backend-service --type=ClusterIP --port=80 --target-port=8080 --selector="role=backend"
kubectl expose deployment backend-service --type=ClusterIP --port=80 --target-port=8080 --selector="role=backend,policytask=true"

Error from server (NotFound): deployments.apps "backend-service" not found
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl expose deployment backend-service --type=ClusterIP --port=80 --target-port=8080 --selector="role=backend,policytask=true"
                                                correct: kubectl expose deployment backend-pod --type=ClusterIP --port=80 --target-port=8080 --selector="role=backend,policytask=true"
Error from server (NotFound): deployments.apps "backend-service" not found
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ ^C
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ ^C

> Why does it not work : kubectl exec frontend-pod -- wget --spider --timeout=1 backend-pod

################################## GPT OUT #######################################

The issue you're encountering is likely due to the fact that `kubectl exec` is used to execute commands in a running container of a Pod, but it requires the Pod to be running and accessible. Here are a few things to check and steps to troubleshoot:

1. **Pod Names**: Ensure that the Pod names are correct. When you create Deployments, the Pods created by them will have names that include a unique identifier. You can list the Pods to get the exact names:
   ```sh
   kubectl get pods
   ```

2. **Pod Status**: Verify that the Pods are running and ready:
   ```sh
   kubectl get pods
   ```

3. **Correct Pod Name in `kubectl exec`**: Use the exact Pod name from the output of the `kubectl get pods` command. For example:
   ```sh
   kubectl exec <frontend-pod-name> -- wget --spider --timeout=1 backend-service
   ```

4. **Service Name**: Ensure that you are using the correct service name (`backend-service`) instead of the Pod name (`backend-pod`). The service name is used for DNS resolution within the cluster.

5. **Network Policies**: Check if there are any network policies that might be restricting communication between the Pods.

Here is an example of how you might run the `wget` command using the correct service name:
```sh
kubectl exec <frontend-pod-name> -- wget --spider --timeout=1 backend-service
```

Replace `<frontend-pod-name>` with the actual name of one of the frontend Pods.

Would you like more detailed steps on any of these points or further assistance with troubleshooting?

============================== REWRITE =========================

It looks like there are a couple of issues with the commands you're running. Here are the steps to fix them:

1. **Creating Deployments**: Ensure you create the deployments correctly and label them appropriately.

2. **Exposing the Correct Deployment**: Make sure you expose the correct deployment name.

Here's a step-by-step guide:

### Step 1: Create the `backend-pod` Deployment
```sh
kubectl create deployment backend-pod --image=busybox --replicas=3 --port=8080 --command -- sleep 3600
kubectl label deployment backend-pod role=backend policytask=true
```

### Step 2: Create the `frontend-pod` Deployment
```sh
kubectl create deployment frontend-pod --image=busybox --replicas=3 --command -- sleep 3600
kubectl label deployment frontend-pod role=frontend policytask=true
```

### Step 3: Expose the `backend-pod` Deployment as a Service
```sh
kubectl expose deployment backend-pod --type=ClusterIP --port=80 --target-port=8080 --selector="role=backend,policytask=true"
```

### Explanation:
- **Deployment Creation**: The `kubectl create deployment` command creates the deployments with the specified image and replicas.
- **Labeling**: The `kubectl label deployment` command adds the necessary labels to the deployments.
- **Service Exposure**: The `kubectl expose deployment` command creates a service for the `backend-pod` deployment, exposing port 80 and targeting port 8080 on the Pods with the specified labels.

By following these steps, you should be able to create and expose the deployments correctly. If you encounter any further issues, feel free to ask!