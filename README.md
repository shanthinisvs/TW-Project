# Introduction 
TODO: Mediawiki deployment using Kubernetes.

# Implementation steps

1. using terraform code created necessary infrastructure like resourcegroup, vm, virtual network, etc.
2. using ansible playbook installed necessary dependencies like docker, minikube, az cli on created ubuntu vm.
3. Above mentioned code is pushed in azure repos and created azure pipeline to run the terraform tasks.
4. on created ubuntu vm mediawiki is deployed using kubernetes manifest files.