resource "aws_eks_node_group" "ng01" {
  cluster_name    = aws_eks_cluster.cl01.name
  node_group_name = "ng01"
  node_role_arn   = aws_iam_role.eks-node.arn
  subnet_ids      = [ aws_subnet.sub_A_in.id, aws_subnet.sub_B_in.id, aws_subnet.sub_C_in.id ]
  security_group_ids = [aws_security_group.https-internal.id]

  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }

  update_config {
    max_unavailable = 1
  }
}