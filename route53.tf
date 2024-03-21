resource "aws_route53_zone" "n4c" {
  name = "n4c.com"

  vpc {
    vpc_id = aws_vpc.main.id
  }
}