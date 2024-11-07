#### 4. Testing
- **Deploy Sample Pods**: Create simple deployments for frontend and backend pods, labeling them appropriately.
- **Test RBAC**:
```sh
kubectl auth can-i get pods --as=system:serviceaccount:default:dev-user
```
- **Test Network Policy**: Access the backend pod from the frontend pod using tools like `curl` or `wget`. This should be successful. Attempting to access the backend pod from outside the cluster should be blocked by the network policy.

The command `kubectl auth can-i get pods --as=system:serviceaccount:default:dev-user` is used to check if a specific Kubernetes service account has the permission to perform a certain action. Here’s a breakdown of what each part of the command does:

- `kubectl auth can-i`: This is the command to check if a user or service account has permission to perform a specific action.
- `get pods`: This specifies the action (`get`) and the resource (`pods`) you are checking permissions for.
- `--as=system:serviceaccount:default:dev-user`: This flag specifies that you want to check the permissions for the `dev-user` service account in the `default` namespace.

When you run this command, Kubernetes will check the role-based access control (RBAC) policies to determine if the `dev-user` service account has the necessary permissions to `get` pods in the `default` namespace. The command will return either `yes` or `no`:

- `yes`: The `dev-user` service account has permission to get pods.
- `no`: The `dev-user` service account does not have permission to get pods.

This is useful for verifying that your RBAC policies are correctly configured and that the service account has the appropriate permissions for the actions it needs to perform. If the command returns `no`, you may need to update your role bindings or cluster role bindings to grant the necessary permissions.