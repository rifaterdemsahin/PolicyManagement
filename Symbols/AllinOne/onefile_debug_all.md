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