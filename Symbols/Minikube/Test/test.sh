#Main yaml to trigger if not triggering single lines
kubectl apply -f backend-pod.yaml
kubectl apply -f frontend-pod.yaml
kubectl apply -f backend-svc.yaml
kubectl exec frontend-pod -- wget --spider --timeout=1 backend-service
