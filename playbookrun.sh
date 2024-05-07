
cd ansible-playbooks


ansible-playbook -i localhost azure-cli.yaml
echo "azure-cli installed"


ansible-playbook -i localhost kubernetes.yaml
echo "kubernetes installed"
