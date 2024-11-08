kubectl apply -f backend-deployment.yaml
kubectl apply -f backend-service.yaml

kubectl apply -f frontend-deployment.yaml
kubectl apply -f nginx-config.yaml

kubectl get pods -l app=frontend
kubectl exec -it <frontend-pod-name> -- curl http://backend-service:8080
