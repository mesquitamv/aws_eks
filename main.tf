resource "aws_eks_cluster" "cluster" {
  name     = var.eks_cluster_name
  role_arn = var.role_arn

  vpc_config {
    endpoint_private_access = true
    endpoint_public_access  = true
    subnet_ids              = var.eks_network_ids
  }
  
  version = var.eks_version

}

resource "aws_eks_node_group" "node_group" {
  for_each = var.nodegroup

  cluster_name    = aws_eks_cluster.cluster.name
  node_group_name = each.value["nodegroup_name"]
  node_role_arn   = var.role_arn
  subnet_ids      = var.eks_network_ids
  instance_types  = each.value["nodegroup_instance_type"]
  
  scaling_config {
    desired_size = each.value["nodegroup_desired_size"]
    max_size     = each.value["nodegroup_max_size"]
    min_size     = each.value["nodegroup_min_size"]
  }

}
