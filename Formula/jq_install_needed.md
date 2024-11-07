It looks like you're encountering an issue with using field selectors for labels in your `kubectl` commands. Field selectors in Kubernetes are limited to certain fields like `metadata.name` and `metadata.namespace`. Labels, however, are not supported as field selectors.

To filter resources based on labels, you should use label selectors instead. Here's how you can modify your commands:

### Using Label Selectors
To get resources with a specific label, use the `-l` or `--selector` flag:

```sh
kubectl get clusterrolebindings,clusterroles,rolebindings,roles,networkpolicies -l policytask=true
```

### Example Command
```sh
kubectl get clusterrolebindings,clusterroles,rolebindings,roles,networkpolicies --selector policytask=true
```

This command will list all the specified resources that have the label `policytask=true`.

### Filtering by Creation Timestamp
Unfortunately, Kubernetes does not support filtering by creation timestamp directly using `kubectl`. You would need to use a combination of `kubectl` and `jq` (a command-line JSON processor) to achieve this. Here’s an example of how you can do it:

1. **Install `jq`** if you don't have it already:
   ```sh
   sudo apt-get install jq
   ```

2. **Filter resources created in the last hour**:
   ```sh
   kubectl get clusterrolebindings,clusterroles,rolebindings,roles,networkpolicies -o json | jq '.items[] | select(.metadata.creationTimestamp >= "'$(date -u -d '1 hour ago' +%Y-%m-%dT%H:%M:%SZ)'")'
   ```

This command retrieves all the specified resources in JSON format and then uses `jq` to filter them based on the `creationTimestamp`.

If you need further assistance or have more questions, feel free to ask!