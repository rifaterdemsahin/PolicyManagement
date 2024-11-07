#Works
kubectl auth can-i get pods --as=system:serviceaccount:default:dev-user


#Does not work 
kubectl exec frontend-pod -- wget --spider --timeout=1 backend-pod