@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl auth can-i get pods --as=system:serviceaccount:default:dev-user
Unable to connect to the server: dial tcp 192.168.49.2:8443: connect: no route to host
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ 

@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl auth can-i get pods --as=system:serviceaccount:default:dev-user
Unable to connect to the server: dial tcp 192.168.49.2:8443: connect: no route to host
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ ^C
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectk get svc -A
bash: kubectk: command not found
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl get svc -A
Unable to connect to the server: dial tcp 192.168.49.2:8443: connect: no route to host
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ minikube start
😄  minikube v1.34.0 on Ubuntu 20.04 (docker/amd64)
✨  Using the docker driver based on existing profile
👍  Starting "minikube" primary control-plane node in "minikube" cluster
🚜  Pulling base image v0.0.45 ...
🔄  Restarting existing docker container for "minikube" ...
^C
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ 





