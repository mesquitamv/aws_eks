resource "aws_eks_cluster" "cluster" {
  name     = var.eks_cluster_name
  role_arn = var.role_arn

  vpc_config {
    endpoint_private_access = true
    endpoint_public_access  = true
    subnet_ids              = local.eks_networks_id_list
  }
  
  version = var.eks_version

}

resource "aws_eks_node_group" "node_group" {
  cluster_name    = aws_eks_cluster.cluster.name
  node_group_name = var.node_group_name
  node_role_arn   = var.role_arn
  subnet_ids      = local.eks_networks_id_list
  instance_types  = [var.nodegroup_instance_type]
  
  scaling_config {
    desired_size = var.nodegroup_desired_size
    max_size     = var.nodegroup_max_size
    min_size     = var.nodegroup_min_size
  }

}
