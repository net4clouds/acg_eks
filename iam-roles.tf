
resource "aws_iam_role" "eks-cluster-service" {
  name = "eks-cluster-service"
  assume_role_policy = data.aws_iam_policy_document.assume_role_eks.json
}

resource "aws_iam_role" "eks-node" {
  name = "eks-node"
  assume_role_policy = data.aws_iam_policy_document.assume_role_ec2.json
}

resource "aws_iam_role" "eks-control-alb" {
  name = "eks-control-alb"
  assume_role_policy = data.aws_iam_policy_document.assume_role_albcontrol.json
}

