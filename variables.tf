variable "eks_cluster_name" {
  description = "Name of EKS cluster"
}

variable "eks_version" {
  description = "Version of EKS"
}

variable "node_group_name" {
  description = "Name of EKS Nodegroup name"
}

variable "role_arn" {
  description = "Role that will be used to create EKS"
}

variable "eks_subnets_id_1" {
  description = "ID of first EKS subnet"
}

variable "eks_subnets_id_2" {
  description = "ID of second EKS subnets"
}

variable "nodegroup_instance_type" {
  description = "Type of VM that will be deployed at EKS"
}

variable "nodegroup_desired_size" {
  description = "Number of desired size of EKS Nodegroup"
}

variable "nodegroup_max_size" {
  description = "Number of maximum size of EKS Nodegroup"
}

variable "nodegroup_min_size" {
  description = "Number of minimum size of EKS Nodegroup"
}

locals {
  eks_networks_id_list = [var.eks_subnets_id_1, var.eks_subnets_id_2]
}