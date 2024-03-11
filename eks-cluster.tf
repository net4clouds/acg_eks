resource "aws_eks_cluster" "cl01" {
  name     = "cl01"
  role_arn = aws_iam_role.eks-cluster-service.arn


  vpc_config {
    subnet_ids = [ aws_subnet.sub_A_in.id, aws_subnet.sub_B_in.id, aws_subnet.sub_C_in.id ]
	endpoint_private_access = true
    endpoint_public_access  = false
  }
}

output "endpoint" {
  value = aws_eks_cluster.cl01.endpoint
}
