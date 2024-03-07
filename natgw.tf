resource "aws_nat_gateway" "ngw" {
  allocation_id = aws_eip.eip01.id
  subnet_id     = aws_subnet.sub_A_pub.id
}