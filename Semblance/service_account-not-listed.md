@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl get clusterrolebindings,clusterroles,rolebindings,roles,networkpolicies,serviceaccount  -l policytask=true
NAME                                              ROLE              AGE
rolebinding.rbac.authorization.k8s.io/read-pods   Role/pod-reader   30m

NAME                                        CREATED AT
role.rbac.authorization.k8s.io/pod-reader   2024-11-07T10:24:32Z
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl get clusterrolebindings,clusterroles,rolebindings,roles,networkpolicies,serviceaccount  -l policytask=true
NAME                                              ROLE              AGE
rolebinding.rbac.authorization.k8s.io/read-pods   Role/pod-reader   31m

NAME                                        CREATED AT
role.rbac.authorization.k8s.io/pod-reader   2024-11-07T10:24:32Z
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl get serviceaccount
NAME       SECRETS   AGE
default    0         59m
dev-user   0         31m
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl get serviceaccount -A
NAMESPACE         NAME                                          SECRETS   AGE
default           default                                       0         59m
default           dev-user                                      0         31m
kube-node-lease   default                                       0         59m
kube-public       default                                       0         59m
kube-system       attachdetach-controller                       0         59m
kube-system       bootstrap-signer                              0         59m
kube-system       certificate-controller                        0         59m
kube-system       clusterrole-aggregation-controller            0         59m
kube-system       coredns                                       0         59m
kube-system       cronjob-controller                            0         59m
kube-system       daemon-set-controller                         0         59m
kube-system       default                                       0         59m
kube-system       deployment-controller                         0         59m
kube-system       disruption-controller                         0         59m
kube-system       endpoint-controller                           0         59m
kube-system       endpointslice-controller                      0         59m
kube-system       endpointslicemirroring-controller             0         59m
kube-system       ephemeral-volume-controller                   0         59m
kube-system       expand-controller                             0         59m
kube-system       generic-garbage-collector                     0         59m
kube-system       horizontal-pod-autoscaler                     0         59m
kube-system       job-controller                                0         59m
kube-system       kube-proxy                                    0         59m
kube-system       legacy-service-account-token-cleaner          0         59m
kube-system       namespace-controller                          0         59m
kube-system       node-controller                               0         59m
kube-system       persistent-volume-binder                      0         59m
kube-system       pod-garbage-collector                         0         59m
kube-system       pv-protection-controller                      0         59m
kube-system       pvc-protection-controller                     0         59m
kube-system       replicaset-controller                         0         59m
kube-system       replication-controller                        0         59m
kube-system       resourcequota-controller                      0         59m
kube-system       root-ca-cert-publisher                        0         59m
kube-system       service-account-controller                    0         59m
kube-system       service-controller                            0         59m
kube-system       statefulset-controller                        0         59m
kube-system       storage-provisioner                           0         59m
kube-system       token-cleaner                                 0         59m
kube-system       ttl-after-finished-controller                 0         59m
kube-system       ttl-controller                                0         59m
kube-system       validatingadmissionpolicy-status-controller   0         59m

@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl describe serviceaccount dev-user
Name:                dev-user
Namespace:           default
Labels:              <none>
Annotations:         <none>
Image pull secrets:  <none>
Mountable secrets:   <none>
Tokens:              <none>
Events:              <none>
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ 