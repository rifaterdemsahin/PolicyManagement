@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl create deployment backend-pod --image=busybox --replicas=3 --port=8080 -- sleep 3600
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl label deployment backend-pod role=backend policytask=true


kubectl create deployment frontend-pod --image=busybox --replicas=3 --labels="role=frontend,policytask=true" --command -- sleep 3600

@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl create deployment frontend-pod --image=busybox --replicas=3 -- sleep 3600
@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ kubectl label deployment frontend-pod role=frontend policytask=true