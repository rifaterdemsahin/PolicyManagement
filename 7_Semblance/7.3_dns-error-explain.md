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

To list services with their DNS names in a Kubernetes Minikube cluster, follow these steps:

1. **Start Minikube**:
   ```bash
   minikube start
   ```

2. **Enable DNS Addons**:
   ```bash
   minikube addons enable ingress
   minikube addons enable ingress-dns
   ```

3. **Deploy Your Services**:
   Ensure your services are deployed. For example:
   ```bash
   kubectl apply -f your-service.yaml
   ```

4. **List Services**:
   Use `kubectl` to list all services in your cluster:
   ```bash
   kubectl get services --all-namespaces
   ```

5. **Describe Services to Get DNS Names**:
   For each service, use the `describe` command to get detailed information, including the DNS name:
   ```bash
   kubectl describe service <service-name> -n <namespace>
   ```

6. **Verify DNS Resolution**:
   You can verify the DNS resolution using `nslookup`:
   ```bash
   nslookup <service-name>.<namespace>.svc.cluster.local
   ```

### Example

Let's say you have a service named `my-service` in the `default` namespace. Here’s how you can get its DNS name:

1. **List Services**:
   ```bash
   kubectl get services -n default
   ```

2. **Describe the Service**:
   ```bash
   kubectl describe service my-service -n default
   kubectl describe service backend-service -n default
   ```
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl describe service backend-service -n default
Name:                     backend-service
Namespace:                default
Labels:                   policytask=true
                          role=backend
Annotations:              <none>
Selector:                 role=backend
Type:                     ClusterIP
IP Family Policy:         SingleStack
IP Families:              IPv4
IP:                       10.109.228.146
IPs:                      10.109.228.146
Port:                     <unset>  80/TCP
TargetPort:               8080/TCP
Endpoints:                10.244.0.9:8080
Session Affinity:         None
Internal Traffic Policy:  Cluster
Events:                   <none>
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ 


3. **DNS Name**:
   The DNS name for the service will be `my-service.default.svc.cluster.local`.

4. **Verify DNS Resolution**:
   ```bash
   nslookup my-service.default.svc.cluster.local
   ```

By following these steps, you can list and verify the DNS names of your services in Minikube¹(https://kubernetes.io/docs/concepts/services-networking/dns-pod-service/)²(https://minikube.sigs.k8s.io/docs/handbook/addons/ingress-dns/)³(https://www.andreasgerstmayr.at/2022/11/23/accessing-services-in-minikube-via-dns.html).

If you need further assistance, feel free to ask!

Source: Conversation with Copilot, 07/11/2024
(1) DNS for Services and Pods - Kubernetes. https://kubernetes.io/docs/concepts/services-networking/dns-pod-service/.
(2) Ingress DNS - minikube. https://minikube.sigs.k8s.io/docs/handbook/addons/ingress-dns/.
(3) Accessing services in minikube via DNS - Andreas Gerstmayr. https://www.andreasgerstmayr.at/2022/11/23/accessing-services-in-minikube-via-dns.html.