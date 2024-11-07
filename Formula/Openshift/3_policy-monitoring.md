
Apply the policy:

```bash
oc apply -f example-policy.yaml
```

### Monitoring Policies

To view the status of your policies:

```bash
oc get policies
```

For detailed information about a specific policy:

```bash
oc describe policy example-policy
```

## Reporting Violations

Policy violations can be viewed in the OpenShift console or via the command line:

```bash
oc get policyviolations
```
