kubectl get clusterrolebindings,clusterroles,rolebindings,roles,networkpolicies --field-selector metadata.creationTimestamp>=$(date -u -d '1 hour ago' +%Y-%m-%dT%H:%M:%SZ)


kubectl get clusterrolebindings,clusterroles,rolebindings,roles,networkpolicies --field-selector label.policytask=true

@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl get clusterrolebindings,clusterroles,rolebindings,roles,networkpolicies --field-selector label.policytask=true
Error from server (BadRequest): Unable to find "rbac.authorization.k8s.io/v1, Resource=clusterrolebindings" that match label selector "", field selector "label.policytask=true": "label.policytask" is not a known field selector: only "metadata.name", "metadata.namespace"
Error from server (BadRequest): Unable to find "rbac.authorization.k8s.io/v1, Resource=clusterroles" that match label selector "", field selector "label.policytask=true": "label.policytask" is not a known field selector: only "metadata.name", "metadata.namespace"
Error from server (BadRequest): Unable to find "rbac.authorization.k8s.io/v1, Resource=rolebindings" that match label selector "", field selector "label.policytask=true": "label.policytask" is not a known field selector: only "metadata.name", "metadata.namespace"
Error from server (BadRequest): Unable to find "rbac.authorization.k8s.io/v1, Resource=roles" that match label selector "", field selector "label.policytask=true": "label.policytask" is not a known field selector: only "metadata.name", "metadata.namespace"
Error from server (BadRequest): Unable to find "networking.k8s.io/v1, Resource=networkpolicies" that match label selector "", field selector "label.policytask=true": "label.policytask" is not a known field selector: only "metadata.name", "metadata.namespace"
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ 

apiVersion: rbac.authorization.k8s.io/v1
kind: Role
metadata:
  namespace: default
  name: pod-reader
  labels:
    policytask: "true"
rules:
- apiGroups: [""]
  resources: ["pods"]
  verbs: ["get", "list", "watch"]


  