```markdown
# Kubernetes Policy Management

## Retrieve Policy-Related Resources

To get a list of cluster role bindings, cluster roles, role bindings, roles, network policies, and service accounts that are labeled with `policytask=true`, use the following command:

```sh
kubectl get clusterrolebindings,clusterroles,rolebindings,roles,networkpolicies,serviceaccount -l policytask=true
```

## Merge Service Accounts

To merge the service accounts, use the following command:

```sh
kubectl get serviceaccount
```

## Retrieve and Merge in One Line

To retrieve and merge the service accounts in one line, use the following command:

```sh
kubectl get clusterrolebindings,clusterroles,rolebindings,roles,networkpolicies,serviceaccount,serviceaccount -l policytask=true
```
```

kubectl get serviceaccount
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl get serviceaccount
NAME       SECRETS   AGE
default    0         69m
dev-user   0         42m
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl get serviceaccount^C
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ 

## Retrieve Specific Service Account

To get details of a specific service account, such as `dev-user`, use the following command:

```sh
kubectl get serviceaccount dev-user
```

One liner
```
kubectl get serviceaccount dev-user;kubectl get clusterrolebindings,clusterroles,rolebindings,roles,networkpolicies,serviceaccount,serviceaccount -l policytask=true
```

@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl get serviceaccount dev-user;kubectl get clusterrolebindings,clusterroles,rolebindings,roles,networkpolicies,serviceaccount,serviceaccount -l policytask=true
NAME       SECRETS   AGE
dev-user   0         43m
NAME                                              ROLE              AGE
rolebinding.rbac.authorization.k8s.io/read-pods   Role/pod-reader   43m

NAME                                        CREATED AT
role.rbac.authorization.k8s.io/pod-reader   2024-11-07T10:24:32Z
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ 