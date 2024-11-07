kubectl get clusterrolebindings,clusterroles,rolebindings,roles,networkpolicies 

kubectl get clusterrolebindings,clusterroles,rolebindings,roles,networkpolicies  --all-namespaces
kubectl get clusterrolebindings,clusterroles,rolebindings,roles,networkpolicies --field-selector metadata.creationTimestamp>=$(date -u -d '1 hour ago' +%Y-%m-%dT%H:%M:%SZ)

kubectl get clusterrolebindings,clusterroles,rolebindings,roles,networkpolicies --all-namespaces --field-selector metadata.creationTimestamp>=$(date -u -d '1 hour ago' +%Y-%m-%dT%H:%M:%SZ)
kubectl get clusterrolebindings,clusterroles,rolebindings,roles,networkpolicies 