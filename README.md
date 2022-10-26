# aws_eks

Terraform module that creates an EKS cluster on AWS.

## Inputs

```hcl
module "aws_eks" {
  source = "aws_eks"

  eks_cluster_name        = # Cluster Name
  eks_version             = # Cluster Version
  node_group_name         = # Name of nodegroup
  role_arn                = # Role that will be used to create EKS
  eks_subnets_id_1        = # ID of subnet 1
  eks_subnets_id_2        = # ID of subnet 2 
  nodegroup_instance_type = # Type of VM
  nodegroup_desired_size  = # Desired size of Cluster
  nodegroup_max_size      = # Max size of Cluster
  nodegroup_min_size      = # Min size of Cluster

}
```

Example
```hcl
module "aws_eks" {
  source = "aws_eks"

  eks_cluster_name        = "eks-cluster"
  eks_version             = "1.21"
  node_group_name         = "node-group-eks"
  role_arn                = "arn:aws:iam::XXXXXXXXXXXXX:role/eks-role"
  eks_subnets_id_1        = "subnet-xxxxxxxxxxxxxxxxx"
  eks_subnets_id_2        = "subnet-yyyyyyyyyyyyyyyyy"
  nodegroup_instance_type = "t3a.xlarge"
  nodegroup_desired_size  = "5"
  nodegroup_max_size      = "10"
  nodegroup_min_size      = "2"
}
```
