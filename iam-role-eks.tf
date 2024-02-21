
resource "aws_iam_role" "eks-cluster-ServiceRole" {
  name = "eks-cluster-ServiceRole"
  assume_role_policy = data.aws_iam_policy_document.assume_role_eks.json
}

resource "aws_iam_role_policy_attachment" "eks-cl-role-policy1-attachment" {
  role       = aws_iam_role.eks-cluster-ServiceRole.name
  policy_arn = data.aws_iam_policy.AmazonEKSClusterPolicy.arn
}

resource "aws_iam_role_policy_attachment" "eks-cl-role-policy2-attachment" {
  role       = aws_iam_role.eks-cluster-ServiceRole.name
  policy_arn = data.aws_iam_policy.AmazonEKSVPCResourceController.arn
}

resource "aws_iam_role_policy_attachment" "eks-cl-role-policy3-attachment" {
  role       = aws_iam_role.eks-cluster-ServiceRole.name
  policy_arn = aws_iam_policy.eks-CloudWatchMetrics.arn
}

resource "aws_iam_role_policy_attachment" "eks-cl-role-policy4-attachment" {
  role       = aws_iam_role.eks-cluster-ServiceRole.name
  policy_arn = aws_iam_policy.eks-ELB.arn
}

resource "aws_iam_role" "eks-NodeInstanceRole" {
  name = "eks-NodeInstanceRole"
  assume_role_policy = data.aws_iam_policy_document.assume_role_ec2.json
}

resource "aws_iam_role_policy_attachment" "eks-nd-role-policy1-attachment" {
  role       = aws_iam_role.eks-NodeInstanceRole.name
  policy_arn = data.aws_iam_policy.AmazonEC2ContainerRegistryReadOnly.arn
}

resource "aws_iam_role_policy_attachment" "eks-nd-role-policy2-attachment" {
  role       = aws_iam_role.eks-NodeInstanceRole.name
  policy_arn = data.aws_iam_policy.AmazonEKS_CNI_Policy.arn
}

resource "aws_iam_role_policy_attachment" "eks-nd-role-policy3-attachment" {
  role       = aws_iam_role.eks-NodeInstanceRole.name
  policy_arn = data.aws_iam_policy.AmazonEKSWorkerNodePolicy.arn
}

resource "aws_iam_role_policy_attachment" "eks-nd-role-policy4-attachment" {
  role       = aws_iam_role.eks-NodeInstanceRole.name
  policy_arn = data.aws_iam_policy.AmazonSSMManagedInstanceCore.arn
}

