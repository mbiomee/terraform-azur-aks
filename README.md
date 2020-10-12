# terraform-azur-aks

[![TerraformRefigistry](https://img.shields.io/badge/Terraform%20Registry-v0.0.2-blue.svg)](https://registry.terraform.io/modules/mbiomee/aks/azur)

General Azur deploy using Terraform
---

## for more info
- [Azur Kubernetes Service](https://docs.microsoft.com/en-us/azure/aks/)
- [Terraform](https://www.terraform.io/)

## Caution
applying this infrastructure will create resources on your azur account so be sure you have enough credits

  


## Usage

Edit varibles.tf file with your setting  

### Terraform

You need to run the following commands to create the resources with Terraform:

```bash
terraform init
terraform plan -out out.plan
terraform apply out.plan
```


### Setup kubectl

Setup your `KUBECONFIG`

```bash
terraform output kubeconfig > ~/.kube/eks-cluster
export KUBECONFIG=./azurek8s
```

You can verify the worker nodes are joining the cluster

```bash
kubectl get nodes --watch
```

### Cleaning up

You can destroy this cluster entirely by running:

```bash
terraform plan -destroy
terraform destroy  --force
```
