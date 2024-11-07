@rifaterdemsahin ➜ /workspaces/PolicyManagement/Symbols/Minikube (main) $ kubectl apply -f serviceaccount.yaml
 -f role.yaml
kubectl apply -f rolebinding.yamlserviceaccount/dev-user created
@rifaterdemsahin ➜ /workspaces/PolicyManagement/Symbols/Minikube (main) $ kubectl apply -f role.yaml
role.rbac.authorization.k8s.io/pod-reader created
@rifaterdemsahin ➜ /workspaces/PolicyManagement/Symbols/Minikube (main) $ kubectl apply -f rolebinding.yaml
rolebinding.rbac.authorization.k8s.io/read-pods created
@rifaterdemsahin ➜ /workspaces/PolicyManagement/Symbols/Minikube (main) $ 




