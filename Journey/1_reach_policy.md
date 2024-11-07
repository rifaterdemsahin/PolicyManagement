```mermaid
graph TD
    A[RBAC] -->|Apply| B[NetworkPolicy]
    B -->|Controls| C[FrontEnd]
    B -->|Controls| D[BackEnd]
    A --> E[ServiceAccount]
    A --> F[Role]
    A --> G[RoleBinding]
```

## 🚀 Reach Active Policy

1. **RBAC**
    - `kubectl apply -f serviceaccount.yaml` 📄
    - `kubectl apply -f role.yaml` 📄
    - `kubectl apply -f rolebinding.yaml` 📄
2. **NetworkPolicy Testing** (Front to BackEnd)
- kubectl auth can-i get pods --as=system:serviceaccount:default:dev-user


Cluster Wide Policy Versus Pod Wide is Different