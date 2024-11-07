@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl get clusterrolebindings,clusterroles,rolebindings,roles,networkpolicies -l policytask=true
NAME                                              ROLE              AGE
rolebinding.rbac.authorization.k8s.io/read-pods   Role/pod-reader   29m

NAME                                        CREATED AT
role.rbac.authorization.k8s.io/pod-reader   2024-11-07T10:24:32Z
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ 