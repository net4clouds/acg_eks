resource "aws_iam_instance_profile" "s3-reg-ssl-exchange" {
  name = "ec2-access-s3-reg-ssl-exchange"
  role = aws_iam_role.ec2-to-s3-reg-ssl-exchange.name
}