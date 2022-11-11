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

variable "eks_network_ids" {
  description = "List of IDs of EKS networks"
}

variable "nodegroup" {
  type = map(object({
    nodegroup_name = string
    nodegroup_instance_type = list(string)
    nodegroup_desired_size = string
    nodegroup_max_size = string
    nodegroup_min_size = string
  }))
  description = "Nodegroup info"
}
