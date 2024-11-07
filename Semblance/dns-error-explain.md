The logs indicate that the DNS queries for `backend-pod.default.svc.cluster.local` are failing with `NXDOMAIN` (Non-Existent Domain) responses. This means that the DNS server is unable to resolve the address. Here are some potential reasons and steps to troubleshoot:

1. **Service Name and Namespace**: Ensure that the service name and namespace are correct. The service should be named `backend-pod` and should be in the `default` namespace.

2. **Service and Endpoints**: Verify that the service and its endpoints are correctly set up:
   ```sh
   kubectl get svc backend-pod -n default
   kubectl get endpoints backend-pod -n default
   ```

   @rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl get svc backend-pod -n default
Error from server (NotFound): services "backend-pod" not found
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ 

@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl get endpoints backend-pod -n default
Error from server (NotFound): endpoints "backend-pod" not found
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ 


@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl get svc backend-pod -n default
Error from server (NotFound): services "backend-pod" not found
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl get endpoints backend-pod -n default
Error from server (NotFound): endpoints "backend-pod" not found
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ 








3. **DNS Configuration**: Check the DNS configuration in the `frontend-pod` to ensure it is set up to use the cluster DNS:
   ```sh
   kubectl exec frontend-pod -- cat /etc/resolv.conf
   ```

4. **CoreDNS Logs**: The logs show that the DNS queries are being appended with additional search domains (e.g., `default.svc.cluster.local.default.svc.cluster.local`). This might be due to incorrect search domains in the `resolv.conf` file. Verify the search domains in the `frontend-pod`:
   ```sh
   kubectl exec frontend-pod -- cat /etc/resolv.conf
   ```

5. **Restart CoreDNS**: If everything seems correct and the issue persists, try restarting the CoreDNS pods:
   ```sh
   kubectl rollout restart deployment coredns -n kube-system
   ```

6. **Network Policies**: Ensure there are no network policies blocking DNS resolution or communication between the pods.

By following these steps, you should be able to identify and resolve the DNS resolution issue. Let me know if you need further assistance!