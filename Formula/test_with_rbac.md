#### 4. Testing
- **Deploy Sample Pods**: Create simple deployments for frontend and backend pods, labeling them appropriately.
- **Test RBAC**:
```sh
kubectl auth can-i get pods --as=system:serviceaccount:default:dev-user
```
- **Test Network Policy**: Access the backend pod from the frontend pod using tools like `curl` or `wget`. This should be successful. Attempting to access the backend pod from outside the cluster should be blocked by the network policy.