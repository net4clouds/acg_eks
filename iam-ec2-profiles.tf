resource "aws_iam_instance_profile" "eks-node" {
  name = "eks-node"
  role = aws_iam_role.eks-node.name
}