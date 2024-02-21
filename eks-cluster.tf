resource "aws_eks_cluster" "cl01" {
  name     = "cl01"
  role_arn = aws_iam_role.eks-cluster-ServiceRole.arn

  vpc_config {
    subnet_ids = [ aws_subnet.sub_A_in.id, aws_subnet.sub_B_in.id, aws_subnet.sub_C_in.id ]
  }
}

output "endpoint" {
  value = aws_eks_cluster.cl01.endpoint
}
