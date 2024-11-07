## Installation

Follow these steps to install OpenShift Cluster Policy Management:

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-org/openshift-cluster-policy-management.git
   cd openshift-cluster-policy-management
   ```

2. **Deploy the Policy Management Operator**:
   ```bash
   oc apply -f deploy/operator.yaml
   ```

3. **Configure the Operator**:
   - Edit the `config.yaml` file to customize the settings.
   - Apply the configuration:
     ```bash
     oc apply -f config.yaml
     ```

4. **Verify the Installation**:
   Check the status of the operator:
   ```bash
   oc get pods -n policy-management
   ```
