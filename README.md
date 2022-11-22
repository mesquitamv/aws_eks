# aws_eks

Terraform module that creates an EKS cluster on AWS.

## Inputs

```hcl
module "aws_eks" {
  source = "aws_eks"

  eks_cluster_name = # Cluster Name
  eks_version      = # Cluster Version
  node_group_name  = # Name of nodegroup
  role_arn         = # Role that will be used to create EKS
  subnet_ids       = # List of subnet IDs
  nodegroup        = # List of nodegroup specs
}
```

Example
```hcl
module "aws_eks" {
  source = "aws_eks"

  eks_cluster_name = "eks-cluster"
  eks_version      = "1.21"
  node_group_name  = "node-group-eks"
  role_arn         = "arn:aws:iam::XXXXXXXXXXXXX:role/eks-role"
  subnet_ids       = ["subnet-xxxxxxxxxxxxxxxxx","subnet-yyyyyyyyyyyyyyyyy"]
  nodegroup        = nodegroup = {
                      nodegroup-1 = {
                        nodegroup_name          = "nodegroup-1"
                        nodegroup_instance_type = ["t3.large"]
                        nodegroup_desired_size  = "2"
                        nodegroup_max_size      = "4"
                        nodegroup_min_size      = "2"
                      }
                      nodegroup-2 = {
                        nodegroup_name          = "nodegroup-2"
                        nodegroup_instance_type = ["t2.large"]
                        nodegroup_desired_size  = "2"
                        nodegroup_max_size      = "4"
                        nodegroup_min_size      = "2"
                      }
                    }
}
```
