# Delete Kubernetes Objects with a Specific Label

To delete Kubernetes objects with the label `policytask="true"`, you can use the following `kubectl` command:

```sh
kubectl delete all -l policytask="true"
```

This command will delete all Kubernetes objects (pods, services, deployments, etc.) that have the label `policytask="true"`.