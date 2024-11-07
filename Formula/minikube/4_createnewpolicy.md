### Creating a Policy

To create a new policy, define it in a YAML file:

```yaml
apiVersion: policy.management.openshift.io/v1
kind: Policy
metadata:
  name: example-policy
spec:
  description: "An example policy for demonstration purposes"
  rules:
    - apiGroups: ["*"]
      resources: ["pods"]
      verbs: ["create", "update"]
```