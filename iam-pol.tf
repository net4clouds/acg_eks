resource "aws_iam_policy" "eks-CloudWatchMetrics" {
  name        = "eks-CloudWatchMetrics"
  path        = "/"
  description = "Access to CloudWatchMetrics"

  policy = jsonencode({
    	
 {
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": [
                "cloudwatch:PutMetricData"
            ],
            "Resource": "*",
            "Effect": "Allow"
        }
    ]
 }
  })
}

resource "aws_iam_policy" "eks-ELB" {
  name        = "eks-ELB"
  path        = "/"
  description = "Access to ELB"

  policy = jsonencode({
 {
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": [
                "ec2:DescribeAccountAttributes",
                "ec2:DescribeAddresses",
                "ec2:DescribeInternetGateways"
            ],
            "Resource": "*",
            "Effect": "Allow"
        }
    ]
 }
  }) 
}  	
