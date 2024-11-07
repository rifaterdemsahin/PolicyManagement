# Getting Policy and RBAC with kubectl

To get information about policies and RBAC (Role-Based Access Control) in your Kubernetes cluster, you can use the following `kubectl` commands:

## Get ClusterRoleBindings
```sh
kubectl get clusterrolebindings
```

## Get ClusterRoles
```sh
kubectl get clusterroles
```

## Get RoleBindings
```sh
kubectl get rolebindings --all-namespaces
```

## Get Roles
```sh
kubectl get roles --all-namespaces
```

## Get Policies
To get policies, you might need to specify the type of policy you are interested in. For example, to get network policies:
```sh
kubectl get networkpolicies --all-namespaces
```

These commands will provide you with a list of the respective resources in your Kubernetes cluster.

## Get All Policies and RBAC Resources
To get all the above-mentioned policies and RBAC resources in one command, you can use:
```sh
kubectl get clusterrolebindings,clusterroles,rolebindings,roles,networkpolicies --all-namespaces
```
This command will provide you with a list of all the specified resources in your Kubernetes cluster.