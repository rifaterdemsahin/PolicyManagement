# How to Test a Network Policy

This guide will walk you through the steps to test a Kubernetes Network Policy. We will use the following example policy:

```yaml
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
    name: frontend-to-backend
    namespace: default
    labels:
        policytask: "true"
spec:
    podSelector:
        matchLabels:
            role: backend
    policyTypes:
    - Ingress
    ingress:
    - from:
        - podSelector:
                matchLabels:
                    role: frontend
```

## Steps to Test the Policy

### 1. Create the Network Policy

Apply the Network Policy using `kubectl`:

```sh
kubectl apply -f <path-to-your-policy-file>.yaml
```

### 2. Verify the Policy is Created

Ensure the policy is created successfully:

```sh
kubectl get networkpolicy -n default
```

You should see `frontend-to-backend` in the list of policies.

### 3. Deploy Test Pods

Deploy two sets of pods, one with the label `role: frontend` and another with the label `role: backend`.

**Frontend Pod:**

```yaml
apiVersion: v1
kind: Pod
metadata:
    name: frontend-pod
    labels:
        role: frontend
spec:
    containers:
    - name: frontend
        image: busybox
        command: ["sleep", "3600"]
```

**Backend Pod:**

```yaml
apiVersion: v1
kind: Pod
metadata:
    name: backend-pod
    labels:
        role: backend
spec:
    containers:
    - name: backend
        image: busybox
        command: ["sleep", "3600"]
```

Apply these pod configurations:

```sh
kubectl apply -f <path-to-frontend-pod>.yaml
kubectl apply -f <path-to-backend-pod>.yaml
```

### 4. Test Connectivity

**From Frontend to Backend:**

```sh
kubectl exec frontend-pod -- wget --spider --timeout=1 backend-pod
```

This should succeed, indicating that the frontend pod can communicate with the backend pod.

**From Other Pods to Backend:**

Deploy another pod without the `role: frontend` label:

```yaml
apiVersion: v1
kind: Pod
metadata:
    name: other-pod
spec:
    containers:
    - name: other
        image: busybox
        command: ["sleep", "3600"]
```

Apply this pod configuration:

```sh
kubectl apply -f <path-to-other-pod>.yaml
```

Test connectivity from this pod to the backend pod:

```sh
kubectl exec other-pod -- wget --spider --timeout=1 backend-pod
```

This should fail, indicating that the other pod cannot communicate with the backend pod.

### 5. Clean Up

Delete the test pods and the network policy:

```sh
kubectl delete -f <path-to-frontend-pod>.yaml
kubectl delete -f <path-to-backend-pod>.yaml
kubectl delete -f <path-to-other-pod>.yaml
kubectl delete -f <path-to-your-policy-file>.yaml
```

By following these steps, you can verify that your Network Policy is working as expected.