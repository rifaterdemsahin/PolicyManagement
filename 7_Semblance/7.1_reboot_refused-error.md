@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl auth can-i get pods --as=system:serviceaccount:default:dev-user
The connection to the server 192.168.49.2:8443 was refused - did you specify the right host or port?
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ 


The error message `The connection to the server 192.168.49.2:8443 was refused - did you specify the right host or port?` indicates that your `kubectl` command is unable to connect to the Kubernetes API server. Here are some steps to troubleshoot this issue:

1. **Check Kubernetes Cluster Status**:
   Ensure that your Kubernetes cluster is running and that the API server is accessible. If you are using a local cluster like Minikube, make sure it is started:
   ```sh
   minikube status
   ```

2. **Verify `kubectl` Configuration**:
   Check your `kubectl` configuration to ensure it is pointing to the correct cluster and context:
   ```sh
   kubectl config view
   kubectl config current-context
   ```

3. **Network Connectivity**:
   Ensure that your machine has network connectivity to the Kubernetes API server. You can try pinging the server IP:
   ```sh
   ping 192.168.49.2
   ```

4. **Restart Kubernetes Components**:
   If you are using Minikube or another local Kubernetes setup, try restarting the cluster:
   ```sh
   minikube stop
   minikube start
   ```

5. **Check API Server Logs**:
   If you have access to the Kubernetes control plane, check the logs of the API server for any errors:
   ```sh
   kubectl logs -n kube-system kube-apiserver-minikube
   ```

6. **Correct Host and Port**:
   Ensure that the `kubectl` command is using the correct host and port for the API server. This information is usually specified in the `kubeconfig` file.

By following these steps, you should be able to identify and resolve the connectivity issue with the Kubernetes API server. Let me know if you need further assistance!


@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl auth can-i get pods --as=system:serviceaccount:default:dev-user
The connection to the server 192.168.49.2:8443 was refused - did you specify the right host or port?
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ minikube status
minikube
type: Control Plane
host: Running
kubelet: Stopped
apiserver: Stopped
kubeconfig: Configured