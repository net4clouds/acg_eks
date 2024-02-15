resource "aws_route_table_association" "internet_access_sub_A_pub" {
  subnet_id      = aws_subnet.sub_A_pub.id
  route_table_id = aws_route_table.rt_internet_access.id
}
resource "aws_route_table_association" "internet_access_sub_B_pub" {
  subnet_id      = aws_subnet.sub_B_pub.id
  route_table_id = aws_route_table.rt_internet_access.id
}
resource "aws_route_table_association" "internet_access_sub_C_pub" {
  subnet_id      = aws_subnet.sub_C_pub.id
  route_table_id = aws_route_table.rt_internet_access.id
}