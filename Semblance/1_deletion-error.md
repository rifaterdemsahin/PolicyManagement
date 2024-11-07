@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl get clusterrolebindings,clusterroles,rolebindings,roles,networkpolicies,serviceaccount  -l policytask=true
NAME                                              ROLE              AGE
rolebinding.rbac.authorization.k8s.io/read-pods   Role/pod-reader   37m

NAME                                        CREATED AT
role.rbac.authorization.k8s.io/pod-reader   2024-11-07T10:24:32Z
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl delete all -l policytask="true"
No resources found
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl delete all -l policytask="true"
No resources found
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl delete all -l policytask="true" -A
No resources found
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $  kubectl get clusterrolebindings,clusterroles,rolebindings,roles,networkpolicies,serviceaccount  -l policytask=true
NAME                                              ROLE              AGE
rolebinding.rbac.authorization.k8s.io/read-pods   Role/pod-reader   39m

NAME                                        CREATED AT
role.rbac.authorization.k8s.io/pod-reader   2024-11-07T10:24:32Z
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ 

