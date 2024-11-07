#All in one

kubectl exec frontend-pod -- wget --spider --timeout=1 backend-pod

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

kubectl expose deployment backend-service --type=ClusterIP --port=80 --target-port=8080 --selector="role=backend"
