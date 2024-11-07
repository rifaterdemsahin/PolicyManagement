@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl auth can-i get pods --as=system:serviceaccount:default:dev-user
The connection to the server 192.168.49.2:8443 was refused - did you specify the right host or port?
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ minikube status
minikube
type: Control Plane
host: Running
kubelet: Stopped
apiserver: Stopped
kubeconfig: Configured

@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ minikube stop
✋  Stopping node "minikube"  ...
🛑  Powering off "minikube" via SSH ...
mi🛑  1 node stopped.
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ minikube start
😄  minikube v1.34.0 on Ubuntu 20.04 (docker/amd64)
✨  Using the docker driver based on existing profile
👍  Starting "minikube" primary control-plane node in "minikube" cluster
🚜  Pulling base image v0.0.45 ...
🔄  Restarting existing docker container for "minikube" ...
🐳  Preparing Kubernetes v1.31.0 on Docker 27.2.0 ...
🔎  Verifying Kubernetes components...
    ▪ Using image gcr.io/k8s-minikube/storage-provisioner:v5
🌟  Enabled addons: storage-provisioner, default-storageclass
🏄  Done! kubectl is now configured to use "minikube" cluster and "default" namespace by default
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ minikube status
minikube
type: Control Plane
host: Running
kubelet: Running
apiserver: Running
kubeconfig: Configured
