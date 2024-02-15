
resource "aws_iam_role" "eks-node" {
  name = "eks-node"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "eks-node" {
  role       = aws_iam_role.eks-node.name
  policy_arn = "${data.aws_iam_policy.eks-node.arn}"
}

