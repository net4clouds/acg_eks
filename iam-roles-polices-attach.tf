

#resource "aws_iam_role_policy_attachment" "eks-cl-role-policy0-attachment" {
#  role       = aws_iam_role.eks-cluster-service.name
#  policy_arn = data.aws_iam_policy.AmazonEKSServicePolicy.arn
#}

resource "aws_iam_role_policy_attachment" "eks-cl-role-policy1-attachment" {
  role       = aws_iam_role.eks-cluster-service.name
  policy_arn = data.aws_iam_policy.AmazonEKSClusterPolicy.arn
}

resource "aws_iam_role_policy_attachment" "eks-cl-role-policy2-attachment" {
  role       = aws_iam_role.eks-cluster-service.name
  policy_arn = data.aws_iam_policy.AmazonEKSVPCResourceController.arn
}

resource "aws_iam_role_policy_attachment" "eks-cl-role-policy3-attachment" {
  role       = aws_iam_role.eks-cluster-service.name
  policy_arn = data.aws_iam_policy.AmazonEKSServiceRolePolicy.arn
}

#resource "aws_iam_role_policy_attachment" "eks-nd-role-policy0-attachment" {
#  role       = aws_iam_role.eks-node.name
#  policy_arn = data.aws_iam_policy.AWSServiceRoleForAmazonEKSNodegroup.arn
#}

resource "aws_iam_role_policy_attachment" "eks-nd-role-policy1-attachment" {
  role       = aws_iam_role.eks-node.name
  policy_arn = data.aws_iam_policy.AmazonEC2ContainerRegistryReadOnly.arn
}

resource "aws_iam_role_policy_attachment" "eks-nd-role-policy2-attachment" {
  role       = aws_iam_role.eks-node.name
  policy_arn = data.aws_iam_policy.AmazonEKS_CNI_Policy.arn
}

resource "aws_iam_role_policy_attachment" "eks-nd-role-policy3-attachment" {
  role       = aws_iam_role.eks-node.name
  policy_arn = data.aws_iam_policy.AmazonEKSWorkerNodePolicy.arn
}

resource "aws_iam_role_policy_attachment" "eks-nd-role-policy4-attachment" {
  role       = aws_iam_role.eks-node.name
  policy_arn = data.aws_iam_policy.AmazonSSMManagedInstanceCore.arn
}

