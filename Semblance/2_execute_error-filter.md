@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl get pods -A
NAMESPACE     NAME                               READY   STATUS    RESTARTS      AGE
kube-system   coredns-6f6b679f8f-2tfp2           1/1     Running   1 (33m ago)   34m
kube-system   etcd-minikube                      1/1     Running   1 (33m ago)   34m
kube-system   kube-apiserver-minikube            1/1     Running   1 (33m ago)   34m
kube-system   kube-controller-manager-minikube   1/1     Running   1 (33m ago)   34m
kube-system   kube-proxy-d4b2n                   1/1     Running   1 (33m ago)   34m
kube-system   kube-scheduler-minikube            1/1     Running   1 (33m ago)   34m
kube-system   storage-provisioner                1/1     Running   2 (33m ago)   34m
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl get clusterrolebindings,clusterroles,rolebindings,roles,networkpolicies --all-namespaces
NAME                                                                                                         ROLE                                                                               AGE
clusterrolebinding.rbac.authorization.k8s.io/cluster-admin                                                   ClusterRole/cluster-admin                                                          37m
clusterrolebinding.rbac.authorization.k8s.io/kubeadm:cluster-admins                                          ClusterRole/cluster-admin                                                          37m
clusterrolebinding.rbac.authorization.k8s.io/kubeadm:get-nodes                                               ClusterRole/kubeadm:get-nodes                                                      37m
clusterrolebinding.rbac.authorization.k8s.io/kubeadm:kubelet-bootstrap                                       ClusterRole/system:node-bootstrapper                                               37m
clusterrolebinding.rbac.authorization.k8s.io/kubeadm:node-autoapprove-bootstrap                              ClusterRole/system:certificates.k8s.io:certificatesigningrequests:nodeclient       37m
clusterrolebinding.rbac.authorization.k8s.io/kubeadm:node-autoapprove-certificate-rotation                   ClusterRole/system:certificates.k8s.io:certificatesigningrequests:selfnodeclient   37m
clusterrolebinding.rbac.authorization.k8s.io/kubeadm:node-proxier                                            ClusterRole/system:node-proxier                                                    37m
clusterrolebinding.rbac.authorization.k8s.io/minikube-rbac                                                   ClusterRole/cluster-admin                                                          37m
clusterrolebinding.rbac.authorization.k8s.io/storage-provisioner                                             ClusterRole/system:persistent-volume-provisioner                                   37m
clusterrolebinding.rbac.authorization.k8s.io/system:basic-user                                               ClusterRole/system:basic-user                                                      37m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:attachdetach-controller                       ClusterRole/system:controller:attachdetach-controller                              37m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:certificate-controller                        ClusterRole/system:controller:certificate-controller                               37m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:clusterrole-aggregation-controller            ClusterRole/system:controller:clusterrole-aggregation-controller                   37m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:cronjob-controller                            ClusterRole/system:controller:cronjob-controller                                   37m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:daemon-set-controller                         ClusterRole/system:controller:daemon-set-controller                                37m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:deployment-controller                         ClusterRole/system:controller:deployment-controller                                37m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:disruption-controller                         ClusterRole/system:controller:disruption-controller                                37m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:endpoint-controller                           ClusterRole/system:controller:endpoint-controller                                  37m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:endpointslice-controller                      ClusterRole/system:controller:endpointslice-controller                             37m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:endpointslicemirroring-controller             ClusterRole/system:controller:endpointslicemirroring-controller                    37m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:ephemeral-volume-controller                   ClusterRole/system:controller:ephemeral-volume-controller                          37m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:expand-controller                             ClusterRole/system:controller:expand-controller                                    37m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:generic-garbage-collector                     ClusterRole/system:controller:generic-garbage-collector                            37m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:horizontal-pod-autoscaler                     ClusterRole/system:controller:horizontal-pod-autoscaler                            37m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:job-controller                                ClusterRole/system:controller:job-controller                                       37m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:legacy-service-account-token-cleaner          ClusterRole/system:controller:legacy-service-account-token-cleaner                 37m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:namespace-controller                          ClusterRole/system:controller:namespace-controller                                 37m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:node-controller                               ClusterRole/system:controller:node-controller                                      37m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:persistent-volume-binder                      ClusterRole/system:controller:persistent-volume-binder                             37m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:pod-garbage-collector                         ClusterRole/system:controller:pod-garbage-collector                                37m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:pv-protection-controller                      ClusterRole/system:controller:pv-protection-controller                             37m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:pvc-protection-controller                     ClusterRole/system:controller:pvc-protection-controller                            37m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:replicaset-controller                         ClusterRole/system:controller:replicaset-controller                                37m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:replication-controller                        ClusterRole/system:controller:replication-controller                               37m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:resourcequota-controller                      ClusterRole/system:controller:resourcequota-controller                             37m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:root-ca-cert-publisher                        ClusterRole/system:controller:root-ca-cert-publisher                               37m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:route-controller                              ClusterRole/system:controller:route-controller                                     37m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:service-account-controller                    ClusterRole/system:controller:service-account-controller                           37m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:service-controller                            ClusterRole/system:controller:service-controller                                   37m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:statefulset-controller                        ClusterRole/system:controller:statefulset-controller                               37m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:ttl-after-finished-controller                 ClusterRole/system:controller:ttl-after-finished-controller                        37m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:ttl-controller                                ClusterRole/system:controller:ttl-controller                                       37m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:validatingadmissionpolicy-status-controller   ClusterRole/system:controller:validatingadmissionpolicy-status-controller          37m
clusterrolebinding.rbac.authorization.k8s.io/system:coredns                                                  ClusterRole/system:coredns                                                         37m
clusterrolebinding.rbac.authorization.k8s.io/system:discovery                                                ClusterRole/system:discovery                                                       37m
clusterrolebinding.rbac.authorization.k8s.io/system:kube-controller-manager                                  ClusterRole/system:kube-controller-manager                                         37m
clusterrolebinding.rbac.authorization.k8s.io/system:kube-dns                                                 ClusterRole/system:kube-dns                                                        37m
clusterrolebinding.rbac.authorization.k8s.io/system:kube-scheduler                                           ClusterRole/system:kube-scheduler                                                  37m
clusterrolebinding.rbac.authorization.k8s.io/system:monitoring                                               ClusterRole/system:monitoring                                                      37m
clusterrolebinding.rbac.authorization.k8s.io/system:node                                                     ClusterRole/system:node                                                            37m
clusterrolebinding.rbac.authorization.k8s.io/system:node-proxier                                             ClusterRole/system:node-proxier                                                    37m
clusterrolebinding.rbac.authorization.k8s.io/system:public-info-viewer                                       ClusterRole/system:public-info-viewer                                              37m
clusterrolebinding.rbac.authorization.k8s.io/system:service-account-issuer-discovery                         ClusterRole/system:service-account-issuer-discovery                                37m
clusterrolebinding.rbac.authorization.k8s.io/system:volume-scheduler                                         ClusterRole/system:volume-scheduler                                                37m

NAME                                                                                                         CREATED AT
clusterrole.rbac.authorization.k8s.io/admin                                                                  2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/cluster-admin                                                          2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/edit                                                                   2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/kubeadm:get-nodes                                                      2024-11-07T09:56:50Z
clusterrole.rbac.authorization.k8s.io/system:aggregate-to-admin                                              2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:aggregate-to-edit                                               2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:aggregate-to-view                                               2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:auth-delegator                                                  2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:basic-user                                                      2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:certificates.k8s.io:certificatesigningrequests:nodeclient       2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:certificates.k8s.io:certificatesigningrequests:selfnodeclient   2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:certificates.k8s.io:kube-apiserver-client-approver              2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:certificates.k8s.io:kube-apiserver-client-kubelet-approver      2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:certificates.k8s.io:kubelet-serving-approver                    2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:certificates.k8s.io:legacy-unknown-approver                     2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:controller:attachdetach-controller                              2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:controller:certificate-controller                               2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:clusterrole-aggregation-controller                   2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:controller:cronjob-controller                                   2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:controller:daemon-set-controller                                2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:controller:deployment-controller                                2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:controller:disruption-controller                                2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:controller:endpoint-controller                                  2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:controller:endpointslice-controller                             2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:controller:endpointslicemirroring-controller                    2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:ephemeral-volume-controller                          2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:expand-controller                                    2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:generic-garbage-collector                            2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:horizontal-pod-autoscaler                            2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:job-controller                                       2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:legacy-service-account-token-cleaner                 2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:namespace-controller                                 2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:node-controller                                      2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:persistent-volume-binder                             2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:pod-garbage-collector                                2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:pv-protection-controller                             2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:pvc-protection-controller                            2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:replicaset-controller                                2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:replication-controller                               2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:resourcequota-controller                             2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:root-ca-cert-publisher                               2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:route-controller                                     2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:service-account-controller                           2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:service-controller                                   2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:statefulset-controller                               2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:ttl-after-finished-controller                        2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:ttl-controller                                       2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:validatingadmissionpolicy-status-controller          2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:coredns                                                         2024-11-07T09:56:51Z
clusterrole.rbac.authorization.k8s.io/system:discovery                                                       2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:heapster                                                        2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:kube-aggregator                                                 2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:kube-controller-manager                                         2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:kube-dns                                                        2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:kube-scheduler                                                  2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:kubelet-api-admin                                               2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:monitoring                                                      2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:node                                                            2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:node-bootstrapper                                               2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:node-problem-detector                                           2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:node-proxier                                                    2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:persistent-volume-provisioner                                   2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:public-info-viewer                                              2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:service-account-issuer-discovery                                2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:volume-scheduler                                                2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/view                                                                   2024-11-07T09:56:48Z

NAMESPACE     NAME                                                                                      ROLE                                                  AGE
default       rolebinding.rbac.authorization.k8s.io/read-pods                                           Role/pod-reader                                       9m49s
kube-public   rolebinding.rbac.authorization.k8s.io/kubeadm:bootstrap-signer-clusterinfo                Role/kubeadm:bootstrap-signer-clusterinfo             37m
kube-public   rolebinding.rbac.authorization.k8s.io/system:controller:bootstrap-signer                  Role/system:controller:bootstrap-signer               37m
kube-system   rolebinding.rbac.authorization.k8s.io/kube-proxy                                          Role/kube-proxy                                       37m
kube-system   rolebinding.rbac.authorization.k8s.io/kubeadm:kubelet-config                              Role/kubeadm:kubelet-config                           37m
kube-system   rolebinding.rbac.authorization.k8s.io/kubeadm:nodes-kubeadm-config                        Role/kubeadm:nodes-kubeadm-config                     37m
kube-system   rolebinding.rbac.authorization.k8s.io/system::extension-apiserver-authentication-reader   Role/extension-apiserver-authentication-reader        37m
kube-system   rolebinding.rbac.authorization.k8s.io/system::leader-locking-kube-controller-manager      Role/system::leader-locking-kube-controller-manager   37m
kube-system   rolebinding.rbac.authorization.k8s.io/system::leader-locking-kube-scheduler               Role/system::leader-locking-kube-scheduler            37m
kube-system   rolebinding.rbac.authorization.k8s.io/system:controller:bootstrap-signer                  Role/system:controller:bootstrap-signer               37m
kube-system   rolebinding.rbac.authorization.k8s.io/system:controller:cloud-provider                    Role/system:controller:cloud-provider                 37m
kube-system   rolebinding.rbac.authorization.k8s.io/system:controller:token-cleaner                     Role/system:controller:token-cleaner                  37m
kube-system   rolebinding.rbac.authorization.k8s.io/system:persistent-volume-provisioner                Role/system:persistent-volume-provisioner             37m

NAMESPACE     NAME                                                                            CREATED AT
default       role.rbac.authorization.k8s.io/pod-reader                                       2024-11-07T10:24:32Z
kube-public   role.rbac.authorization.k8s.io/kubeadm:bootstrap-signer-clusterinfo             2024-11-07T09:56:50Z
kube-public   role.rbac.authorization.k8s.io/system:controller:bootstrap-signer               2024-11-07T09:56:50Z
kube-system   role.rbac.authorization.k8s.io/extension-apiserver-authentication-reader        2024-11-07T09:56:50Z
kube-system   role.rbac.authorization.k8s.io/kube-proxy                                       2024-11-07T09:56:51Z
kube-system   role.rbac.authorization.k8s.io/kubeadm:kubelet-config                           2024-11-07T09:56:50Z
kube-system   role.rbac.authorization.k8s.io/kubeadm:nodes-kubeadm-config                     2024-11-07T09:56:50Z
kube-system   role.rbac.authorization.k8s.io/system::leader-locking-kube-controller-manager   2024-11-07T09:56:50Z
kube-system   role.rbac.authorization.k8s.io/system::leader-locking-kube-scheduler            2024-11-07T09:56:50Z
kube-system   role.rbac.authorization.k8s.io/system:controller:bootstrap-signer               2024-11-07T09:56:50Z
kube-system   role.rbac.authorization.k8s.io/system:controller:cloud-provider                 2024-11-07T09:56:50Z
kube-system   role.rbac.authorization.k8s.io/system:controller:token-cleaner                  2024-11-07T09:56:50Z
kube-system   role.rbac.authorization.k8s.io/system:persistent-volume-provisioner             2024-11-07T09:56:53Z
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl get clusterrolebindings,clusterroles,rolebindings,roles,networkpolicies 
NAME                                                                                                         ROLE                                                                               AGE
clusterrolebinding.rbac.authorization.k8s.io/cluster-admin                                                   ClusterRole/cluster-admin                                                          39m
clusterrolebinding.rbac.authorization.k8s.io/kubeadm:cluster-admins                                          ClusterRole/cluster-admin                                                          39m
clusterrolebinding.rbac.authorization.k8s.io/kubeadm:get-nodes                                               ClusterRole/kubeadm:get-nodes                                                      39m
clusterrolebinding.rbac.authorization.k8s.io/kubeadm:kubelet-bootstrap                                       ClusterRole/system:node-bootstrapper                                               39m
clusterrolebinding.rbac.authorization.k8s.io/kubeadm:node-autoapprove-bootstrap                              ClusterRole/system:certificates.k8s.io:certificatesigningrequests:nodeclient       39m
clusterrolebinding.rbac.authorization.k8s.io/kubeadm:node-autoapprove-certificate-rotation                   ClusterRole/system:certificates.k8s.io:certificatesigningrequests:selfnodeclient   39m
clusterrolebinding.rbac.authorization.k8s.io/kubeadm:node-proxier                                            ClusterRole/system:node-proxier                                                    39m
clusterrolebinding.rbac.authorization.k8s.io/minikube-rbac                                                   ClusterRole/cluster-admin                                                          39m
clusterrolebinding.rbac.authorization.k8s.io/storage-provisioner                                             ClusterRole/system:persistent-volume-provisioner                                   39m
clusterrolebinding.rbac.authorization.k8s.io/system:basic-user                                               ClusterRole/system:basic-user                                                      39m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:attachdetach-controller                       ClusterRole/system:controller:attachdetach-controller                              39m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:certificate-controller                        ClusterRole/system:controller:certificate-controller                               39m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:clusterrole-aggregation-controller            ClusterRole/system:controller:clusterrole-aggregation-controller                   39m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:cronjob-controller                            ClusterRole/system:controller:cronjob-controller                                   39m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:daemon-set-controller                         ClusterRole/system:controller:daemon-set-controller                                39m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:deployment-controller                         ClusterRole/system:controller:deployment-controller                                39m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:disruption-controller                         ClusterRole/system:controller:disruption-controller                                39m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:endpoint-controller                           ClusterRole/system:controller:endpoint-controller                                  39m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:endpointslice-controller                      ClusterRole/system:controller:endpointslice-controller                             39m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:endpointslicemirroring-controller             ClusterRole/system:controller:endpointslicemirroring-controller                    39m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:ephemeral-volume-controller                   ClusterRole/system:controller:ephemeral-volume-controller                          39m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:expand-controller                             ClusterRole/system:controller:expand-controller                                    39m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:generic-garbage-collector                     ClusterRole/system:controller:generic-garbage-collector                            39m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:horizontal-pod-autoscaler                     ClusterRole/system:controller:horizontal-pod-autoscaler                            39m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:job-controller                                ClusterRole/system:controller:job-controller                                       39m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:legacy-service-account-token-cleaner          ClusterRole/system:controller:legacy-service-account-token-cleaner                 39m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:namespace-controller                          ClusterRole/system:controller:namespace-controller                                 39m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:node-controller                               ClusterRole/system:controller:node-controller                                      39m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:persistent-volume-binder                      ClusterRole/system:controller:persistent-volume-binder                             39m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:pod-garbage-collector                         ClusterRole/system:controller:pod-garbage-collector                                39m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:pv-protection-controller                      ClusterRole/system:controller:pv-protection-controller                             39m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:pvc-protection-controller                     ClusterRole/system:controller:pvc-protection-controller                            39m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:replicaset-controller                         ClusterRole/system:controller:replicaset-controller                                39m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:replication-controller                        ClusterRole/system:controller:replication-controller                               39m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:resourcequota-controller                      ClusterRole/system:controller:resourcequota-controller                             39m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:root-ca-cert-publisher                        ClusterRole/system:controller:root-ca-cert-publisher                               39m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:route-controller                              ClusterRole/system:controller:route-controller                                     39m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:service-account-controller                    ClusterRole/system:controller:service-account-controller                           39m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:service-controller                            ClusterRole/system:controller:service-controller                                   39m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:statefulset-controller                        ClusterRole/system:controller:statefulset-controller                               39m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:ttl-after-finished-controller                 ClusterRole/system:controller:ttl-after-finished-controller                        39m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:ttl-controller                                ClusterRole/system:controller:ttl-controller                                       39m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:validatingadmissionpolicy-status-controller   ClusterRole/system:controller:validatingadmissionpolicy-status-controller          39m
clusterrolebinding.rbac.authorization.k8s.io/system:coredns                                                  ClusterRole/system:coredns                                                         39m
clusterrolebinding.rbac.authorization.k8s.io/system:discovery                                                ClusterRole/system:discovery                                                       39m
clusterrolebinding.rbac.authorization.k8s.io/system:kube-controller-manager                                  ClusterRole/system:kube-controller-manager                                         39m
clusterrolebinding.rbac.authorization.k8s.io/system:kube-dns                                                 ClusterRole/system:kube-dns                                                        39m
clusterrolebinding.rbac.authorization.k8s.io/system:kube-scheduler                                           ClusterRole/system:kube-scheduler                                                  39m
clusterrolebinding.rbac.authorization.k8s.io/system:monitoring                                               ClusterRole/system:monitoring                                                      39m
clusterrolebinding.rbac.authorization.k8s.io/system:node                                                     ClusterRole/system:node                                                            39m
clusterrolebinding.rbac.authorization.k8s.io/system:node-proxier                                             ClusterRole/system:node-proxier                                                    39m
clusterrolebinding.rbac.authorization.k8s.io/system:public-info-viewer                                       ClusterRole/system:public-info-viewer                                              39m
clusterrolebinding.rbac.authorization.k8s.io/system:service-account-issuer-discovery                         ClusterRole/system:service-account-issuer-discovery                                39m
clusterrolebinding.rbac.authorization.k8s.io/system:volume-scheduler                                         ClusterRole/system:volume-scheduler                                                39m

NAME                                                                                                         CREATED AT
clusterrole.rbac.authorization.k8s.io/admin                                                                  2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/cluster-admin                                                          2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/edit                                                                   2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/kubeadm:get-nodes                                                      2024-11-07T09:56:50Z
clusterrole.rbac.authorization.k8s.io/system:aggregate-to-admin                                              2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:aggregate-to-edit                                               2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:aggregate-to-view                                               2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:auth-delegator                                                  2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:basic-user                                                      2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:certificates.k8s.io:certificatesigningrequests:nodeclient       2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:certificates.k8s.io:certificatesigningrequests:selfnodeclient   2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:certificates.k8s.io:kube-apiserver-client-approver              2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:certificates.k8s.io:kube-apiserver-client-kubelet-approver      2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:certificates.k8s.io:kubelet-serving-approver                    2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:certificates.k8s.io:legacy-unknown-approver                     2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:controller:attachdetach-controller                              2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:controller:certificate-controller                               2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:clusterrole-aggregation-controller                   2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:controller:cronjob-controller                                   2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:controller:daemon-set-controller                                2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:controller:deployment-controller                                2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:controller:disruption-controller                                2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:controller:endpoint-controller                                  2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:controller:endpointslice-controller                             2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:controller:endpointslicemirroring-controller                    2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:ephemeral-volume-controller                          2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:expand-controller                                    2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:generic-garbage-collector                            2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:horizontal-pod-autoscaler                            2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:job-controller                                       2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:legacy-service-account-token-cleaner                 2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:namespace-controller                                 2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:node-controller                                      2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:persistent-volume-binder                             2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:pod-garbage-collector                                2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:pv-protection-controller                             2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:pvc-protection-controller                            2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:replicaset-controller                                2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:replication-controller                               2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:resourcequota-controller                             2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:root-ca-cert-publisher                               2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:route-controller                                     2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:service-account-controller                           2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:service-controller                                   2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:statefulset-controller                               2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:ttl-after-finished-controller                        2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:ttl-controller                                       2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:validatingadmissionpolicy-status-controller          2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:coredns                                                         2024-11-07T09:56:51Z
clusterrole.rbac.authorization.k8s.io/system:discovery                                                       2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:heapster                                                        2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:kube-aggregator                                                 2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:kube-controller-manager                                         2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:kube-dns                                                        2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:kube-scheduler                                                  2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:kubelet-api-admin                                               2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:monitoring                                                      2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:node                                                            2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:node-bootstrapper                                               2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:node-problem-detector                                           2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:node-proxier                                                    2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:persistent-volume-provisioner                                   2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:public-info-viewer                                              2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:service-account-issuer-discovery                                2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:volume-scheduler                                                2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/view                                                                   2024-11-07T09:56:48Z

NAME                                              ROLE              AGE
rolebinding.rbac.authorization.k8s.io/read-pods   Role/pod-reader   11m

NAME                                        CREATED AT
role.rbac.authorization.k8s.io/pod-reader   2024-11-07T10:24:32Z
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl get clusterrolebindings,clusterroles,rolebindings,roles,networkpolicies --all-namespaces
NAME                                                                                                         ROLE                                                                               AGE
clusterrolebinding.rbac.authorization.k8s.io/cluster-admin                                                   ClusterRole/cluster-admin                                                          43m
clusterrolebinding.rbac.authorization.k8s.io/kubeadm:cluster-admins                                          ClusterRole/cluster-admin                                                          43m
clusterrolebinding.rbac.authorization.k8s.io/kubeadm:get-nodes                                               ClusterRole/kubeadm:get-nodes                                                      43m
clusterrolebinding.rbac.authorization.k8s.io/kubeadm:kubelet-bootstrap                                       ClusterRole/system:node-bootstrapper                                               43m
clusterrolebinding.rbac.authorization.k8s.io/kubeadm:node-autoapprove-bootstrap                              ClusterRole/system:certificates.k8s.io:certificatesigningrequests:nodeclient       43m
clusterrolebinding.rbac.authorization.k8s.io/kubeadm:node-autoapprove-certificate-rotation                   ClusterRole/system:certificates.k8s.io:certificatesigningrequests:selfnodeclient   43m
clusterrolebinding.rbac.authorization.k8s.io/kubeadm:node-proxier                                            ClusterRole/system:node-proxier                                                    43m
clusterrolebinding.rbac.authorization.k8s.io/minikube-rbac                                                   ClusterRole/cluster-admin                                                          43m
clusterrolebinding.rbac.authorization.k8s.io/storage-provisioner                                             ClusterRole/system:persistent-volume-provisioner                                   43m
clusterrolebinding.rbac.authorization.k8s.io/system:basic-user                                               ClusterRole/system:basic-user                                                      43m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:attachdetach-controller                       ClusterRole/system:controller:attachdetach-controller                              43m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:certificate-controller                        ClusterRole/system:controller:certificate-controller                               43m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:clusterrole-aggregation-controller            ClusterRole/system:controller:clusterrole-aggregation-controller                   43m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:cronjob-controller                            ClusterRole/system:controller:cronjob-controller                                   43m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:daemon-set-controller                         ClusterRole/system:controller:daemon-set-controller                                43m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:deployment-controller                         ClusterRole/system:controller:deployment-controller                                43m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:disruption-controller                         ClusterRole/system:controller:disruption-controller                                43m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:endpoint-controller                           ClusterRole/system:controller:endpoint-controller                                  43m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:endpointslice-controller                      ClusterRole/system:controller:endpointslice-controller                             43m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:endpointslicemirroring-controller             ClusterRole/system:controller:endpointslicemirroring-controller                    43m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:ephemeral-volume-controller                   ClusterRole/system:controller:ephemeral-volume-controller                          43m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:expand-controller                             ClusterRole/system:controller:expand-controller                                    43m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:generic-garbage-collector                     ClusterRole/system:controller:generic-garbage-collector                            43m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:horizontal-pod-autoscaler                     ClusterRole/system:controller:horizontal-pod-autoscaler                            43m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:job-controller                                ClusterRole/system:controller:job-controller                                       43m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:legacy-service-account-token-cleaner          ClusterRole/system:controller:legacy-service-account-token-cleaner                 43m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:namespace-controller                          ClusterRole/system:controller:namespace-controller                                 43m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:node-controller                               ClusterRole/system:controller:node-controller                                      43m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:persistent-volume-binder                      ClusterRole/system:controller:persistent-volume-binder                             43m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:pod-garbage-collector                         ClusterRole/system:controller:pod-garbage-collector                                43m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:pv-protection-controller                      ClusterRole/system:controller:pv-protection-controller                             43m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:pvc-protection-controller                     ClusterRole/system:controller:pvc-protection-controller                            43m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:replicaset-controller                         ClusterRole/system:controller:replicaset-controller                                43m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:replication-controller                        ClusterRole/system:controller:replication-controller                               43m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:resourcequota-controller                      ClusterRole/system:controller:resourcequota-controller                             43m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:root-ca-cert-publisher                        ClusterRole/system:controller:root-ca-cert-publisher                               43m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:route-controller                              ClusterRole/system:controller:route-controller                                     43m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:service-account-controller                    ClusterRole/system:controller:service-account-controller                           43m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:service-controller                            ClusterRole/system:controller:service-controller                                   43m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:statefulset-controller                        ClusterRole/system:controller:statefulset-controller                               43m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:ttl-after-finished-controller                 ClusterRole/system:controller:ttl-after-finished-controller                        43m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:ttl-controller                                ClusterRole/system:controller:ttl-controller                                       43m
clusterrolebinding.rbac.authorization.k8s.io/system:controller:validatingadmissionpolicy-status-controller   ClusterRole/system:controller:validatingadmissionpolicy-status-controller          43m
clusterrolebinding.rbac.authorization.k8s.io/system:coredns                                                  ClusterRole/system:coredns                                                         43m
clusterrolebinding.rbac.authorization.k8s.io/system:discovery                                                ClusterRole/system:discovery                                                       43m
clusterrolebinding.rbac.authorization.k8s.io/system:kube-controller-manager                                  ClusterRole/system:kube-controller-manager                                         43m
clusterrolebinding.rbac.authorization.k8s.io/system:kube-dns                                                 ClusterRole/system:kube-dns                                                        43m
clusterrolebinding.rbac.authorization.k8s.io/system:kube-scheduler                                           ClusterRole/system:kube-scheduler                                                  43m
clusterrolebinding.rbac.authorization.k8s.io/system:monitoring                                               ClusterRole/system:monitoring                                                      43m
clusterrolebinding.rbac.authorization.k8s.io/system:node                                                     ClusterRole/system:node                                                            43m
clusterrolebinding.rbac.authorization.k8s.io/system:node-proxier                                             ClusterRole/system:node-proxier                                                    43m
clusterrolebinding.rbac.authorization.k8s.io/system:public-info-viewer                                       ClusterRole/system:public-info-viewer                                              43m
clusterrolebinding.rbac.authorization.k8s.io/system:service-account-issuer-discovery                         ClusterRole/system:service-account-issuer-discovery                                43m
clusterrolebinding.rbac.authorization.k8s.io/system:volume-scheduler                                         ClusterRole/system:volume-scheduler                                                43m

NAME                                                                                                         CREATED AT
clusterrole.rbac.authorization.k8s.io/admin                                                                  2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/cluster-admin                                                          2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/edit                                                                   2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/kubeadm:get-nodes                                                      2024-11-07T09:56:50Z
clusterrole.rbac.authorization.k8s.io/system:aggregate-to-admin                                              2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:aggregate-to-edit                                               2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:aggregate-to-view                                               2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:auth-delegator                                                  2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:basic-user                                                      2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:certificates.k8s.io:certificatesigningrequests:nodeclient       2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:certificates.k8s.io:certificatesigningrequests:selfnodeclient   2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:certificates.k8s.io:kube-apiserver-client-approver              2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:certificates.k8s.io:kube-apiserver-client-kubelet-approver      2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:certificates.k8s.io:kubelet-serving-approver                    2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:certificates.k8s.io:legacy-unknown-approver                     2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:controller:attachdetach-controller                              2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:controller:certificate-controller                               2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:clusterrole-aggregation-controller                   2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:controller:cronjob-controller                                   2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:controller:daemon-set-controller                                2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:controller:deployment-controller                                2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:controller:disruption-controller                                2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:controller:endpoint-controller                                  2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:controller:endpointslice-controller                             2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:controller:endpointslicemirroring-controller                    2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:ephemeral-volume-controller                          2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:expand-controller                                    2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:generic-garbage-collector                            2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:horizontal-pod-autoscaler                            2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:job-controller                                       2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:legacy-service-account-token-cleaner                 2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:namespace-controller                                 2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:node-controller                                      2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:persistent-volume-binder                             2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:pod-garbage-collector                                2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:pv-protection-controller                             2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:pvc-protection-controller                            2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:replicaset-controller                                2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:replication-controller                               2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:resourcequota-controller                             2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:root-ca-cert-publisher                               2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:route-controller                                     2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:service-account-controller                           2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:service-controller                                   2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:statefulset-controller                               2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:ttl-after-finished-controller                        2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:ttl-controller                                       2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:controller:validatingadmissionpolicy-status-controller          2024-11-07T09:56:49Z
clusterrole.rbac.authorization.k8s.io/system:coredns                                                         2024-11-07T09:56:51Z
clusterrole.rbac.authorization.k8s.io/system:discovery                                                       2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:heapster                                                        2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:kube-aggregator                                                 2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:kube-controller-manager                                         2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:kube-dns                                                        2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:kube-scheduler                                                  2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:kubelet-api-admin                                               2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:monitoring                                                      2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:node                                                            2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:node-bootstrapper                                               2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:node-problem-detector                                           2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:node-proxier                                                    2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:persistent-volume-provisioner                                   2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:public-info-viewer                                              2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:service-account-issuer-discovery                                2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/system:volume-scheduler                                                2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/view                                                                   2024-11-07T09:56:48Z

NAMESPACE     NAME                                                                                      ROLE                                                  AGE
default       rolebinding.rbac.authorization.k8s.io/read-pods                                           Role/pod-reader                                       15m
kube-public   rolebinding.rbac.authorization.k8s.io/kubeadm:bootstrap-signer-clusterinfo                Role/kubeadm:bootstrap-signer-clusterinfo             43m
kube-public   rolebinding.rbac.authorization.k8s.io/system:controller:bootstrap-signer                  Role/system:controller:bootstrap-signer               43m
kube-system   rolebinding.rbac.authorization.k8s.io/kube-proxy                                          Role/kube-proxy                                       43m
kube-system   rolebinding.rbac.authorization.k8s.io/kubeadm:kubelet-config                              Role/kubeadm:kubelet-config                           43m
kube-system   rolebinding.rbac.authorization.k8s.io/kubeadm:nodes-kubeadm-config                        Role/kubeadm:nodes-kubeadm-config                     43m
kube-system   rolebinding.rbac.authorization.k8s.io/system::extension-apiserver-authentication-reader   Role/extension-apiserver-authentication-reader        43m
kube-system   rolebinding.rbac.authorization.k8s.io/system::leader-locking-kube-controller-manager      Role/system::leader-locking-kube-controller-manager   43m
kube-system   rolebinding.rbac.authorization.k8s.io/system::leader-locking-kube-scheduler               Role/system::leader-locking-kube-scheduler            43m
kube-system   rolebinding.rbac.authorization.k8s.io/system:controller:bootstrap-signer                  Role/system:controller:bootstrap-signer               43m
kube-system   rolebinding.rbac.authorization.k8s.io/system:controller:cloud-provider                    Role/system:controller:cloud-provider                 43m
kube-system   rolebinding.rbac.authorization.k8s.io/system:controller:token-cleaner                     Role/system:controller:token-cleaner                  43m
kube-system   rolebinding.rbac.authorization.k8s.io/system:persistent-volume-provisioner                Role/system:persistent-volume-provisioner             43m

NAMESPACE     NAME                                                                            CREATED AT
default       role.rbac.authorization.k8s.io/pod-reader                                       2024-11-07T10:24:32Z
kube-public   role.rbac.authorization.k8s.io/kubeadm:bootstrap-signer-clusterinfo             2024-11-07T09:56:50Z
kube-public   role.rbac.authorization.k8s.io/system:controller:bootstrap-signer               2024-11-07T09:56:50Z
kube-system   role.rbac.authorization.k8s.io/extension-apiserver-authentication-reader        2024-11-07T09:56:50Z
kube-system   role.rbac.authorization.k8s.io/kube-proxy                                       2024-11-07T09:56:51Z
kube-system   role.rbac.authorization.k8s.io/kubeadm:kubelet-config                           2024-11-07T09:56:50Z
kube-system   role.rbac.authorization.k8s.io/kubeadm:nodes-kubeadm-config                     2024-11-07T09:56:50Z
kube-system   role.rbac.authorization.k8s.io/system::leader-locking-kube-controller-manager   2024-11-07T09:56:50Z
kube-system   role.rbac.authorization.k8s.io/system::leader-locking-kube-scheduler            2024-11-07T09:56:50Z
kube-system   role.rbac.authorization.k8s.io/system:controller:bootstrap-signer               2024-11-07T09:56:50Z
kube-system   role.rbac.authorization.k8s.io/system:controller:cloud-provider                 2024-11-07T09:56:50Z
kube-system   role.rbac.authorization.k8s.io/system:controller:token-cleaner                  2024-11-07T09:56:50Z
kube-system   role.rbac.authorization.k8s.io/system:persistent-volume-provisioner             2024-11-07T09:56:53Z
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl get clusterrolebindings,clusterroles,rolebindings,roles,networkpolicies --all-namespaces --field-selector metadata.creationTimestamp>=$(date -u -d '1 hour ago' +%Y-%m-%dT%H:%M:%SZ)
Error from server (BadRequest): Unable to find "rbac.authorization.k8s.io/v1, Resource=clusterrolebindings" that match label selector "", field selector "metadata.creationTimestamp": invalid selector: 'metadata.creationTimestamp'; can't understand 'metadata.creationTimestamp'
Error from server (BadRequest): Unable to find "rbac.authorization.k8s.io/v1, Resource=clusterroles" that match label selector "", field selector "metadata.creationTimestamp": invalid selector: 'metadata.creationTimestamp'; can't understand 'metadata.creationTimestamp'
Error from server (BadRequest): Unable to find "rbac.authorization.k8s.io/v1, Resource=rolebindings" that match label selector "", field selector "metadata.creationTimestamp": invalid selector: 'metadata.creationTimestamp'; can't understand 'metadata.creationTimestamp'
Error from server (BadRequest): Unable to find "rbac.authorization.k8s.io/v1, Resource=roles" that match label selector "", field selector "metadata.creationTimestamp": invalid selector: 'metadata.creationTimestamp'; can't understand 'metadata.creationTimestamp'
Error from server (BadRequest): Unable to find "networking.k8s.io/v1, Resource=networkpolicies" that match label selector "", field selector "metadata.creationTimestamp": invalid selector: 'metadata.creationTimestamp'; can't understand 'metadata.creationTimestamp'
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl get clusterrolebindings,clusterroles,rolebindings,roles,networkpolicies --field-selector metadata.creationTimestamp>=$(date -u -d '1 hour ago' +%Y-%m-%dT%H:%M:%SZ)
Error from server (BadRequest): Unable to find "rbac.authorization.k8s.io/v1, Resource=clusterrolebindings" that match label selector "", field selector "metadata.creationTimestamp": invalid selector: 'metadata.creationTimestamp'; can't understand 'metadata.creationTimestamp'
Error from server (BadRequest): Unable to find "rbac.authorization.k8s.io/v1, Resource=clusterroles" that match label selector "", field selector "metadata.creationTimestamp": invalid selector: 'metadata.creationTimestamp'; can't understand 'metadata.creationTimestamp'
Error from server (BadRequest): Unable to find "rbac.authorization.k8s.io/v1, Resource=rolebindings" that match label selector "", field selector "metadata.creationTimestamp": invalid selector: 'metadata.creationTimestamp'; can't understand 'metadata.creationTimestamp'
Error from server (BadRequest): Unable to find "rbac.authorization.k8s.io/v1, Resource=roles" that match label selector "", field selector "metadata.creationTimestamp": invalid selector: 'metadata.creationTimestamp'; can't understand 'metadata.creationTimestamp'
Error from server (BadRequest): Unable to find "networking.k8s.io/v1, Resource=networkpolicies" that match label selector "", field selector "metadata.creationTimestamp": invalid selector: 'metadata.creationTimestamp'; can't understand 'metadata.creationTimestamp'
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl get clusterrolebindings,clusterroles,rolebindings,roles,networkpolicies --field-selector metadata.name>=$(date -u -d '1 hour ago' +%Y-%m-%dT%H:%M:%SZ)
Error from server (BadRequest): Unable to find "rbac.authorization.k8s.io/v1, Resource=clusterrolebindings" that match label selector "", field selector "metadata.name": invalid selector: 'metadata.name'; can't understand 'metadata.name'
Error from server (BadRequest): Unable to find "rbac.authorization.k8s.io/v1, Resource=clusterroles" that match label selector "", field selector "metadata.name": invalid selector: 'metadata.name'; can't understand 'metadata.name'
Error from server (BadRequest): Unable to find "rbac.authorization.k8s.io/v1, Resource=rolebindings" that match label selector "", field selector "metadata.name": invalid selector: 'metadata.name'; can't understand 'metadata.name'
Error from server (BadRequest): Unable to find "rbac.authorization.k8s.io/v1, Resource=roles" that match label selector "", field selector "metadata.name": invalid selector: 'metadata.name'; can't understand 'metadata.name'
Error from server (BadRequest): Unable to find "networking.k8s.io/v1, Resource=networkpolicies" that match label selector "", field selector "metadata.name": invalid selector: 'metadata.name'; can't understand 'metadata.name'
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ ubectl get clusterrolebindings,clusterroles,rolebindings,roles,networkpolicies --field-selector metadata.creationTimestamp>=$(date -u -d '1 hour ago' +%Y-%m-%dT%H:%M:%SZ)
bash: ubectl: command not found
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ 
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl get clusterrolebindings,clusterroles,rolebindings,roles,networkpolicies --field-selector metadata.creationTimestamp>=$(date -u -d '1 hour ago' +%Y-%m-%dT%H:%M:%SZ)
Error from server (BadRequest): Unable to find "rbac.authorization.k8s.io/v1, Resource=clusterrolebindings" that match label selector "", field selector "metadata.creationTimestamp": invalid selector: 'metadata.creationTimestamp'; can't understand 'metadata.creationTimestamp'
Error from server (BadRequest): Unable to find "rbac.authorization.k8s.io/v1, Resource=clusterroles" that match label selector "", field selector "metadata.creationTimestamp": invalid selector: 'metadata.creationTimestamp'; can't understand 'metadata.creationTimestamp'
Error from server (BadRequest): Unable to find "rbac.authorization.k8s.io/v1, Resource=rolebindings" that match label selector "", field selector "metadata.creationTimestamp": invalid selector: 'metadata.creationTimestamp'; can't understand 'metadata.creationTimestamp'
Error from server (BadRequest): Unable to find "rbac.authorization.k8s.io/v1, Resource=roles" that match label selector "", field selector "metadata.creationTimestamp": invalid selector: 'metadata.creationTimestamp'; can't understand 'metadata.creationTimestamp'
Error from server (BadRequest): Unable to find "networking.k8s.io/v1, Resource=networkpolicies" that match label selector "", field selector "metadata.creationTimestamp": invalid selector: 'metadata.creationTimestamp'; can't understand 'metadata.creationTimestamp'
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ ^C
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ 

NAME                                                                                                         CREATED AT
clusterrole.rbac.authorization.k8s.io/admin                                                                  2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/cluster-admin                                                          2024-11-07T09:56:48Z
clusterrole.rbac.authorization.k8s.io/edit                                                                   2024-11-07T09:56:48Z