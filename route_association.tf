resource "aws_route_table_association" "internet_access_sub_A_in" {
  subnet_id      = aws_subnet.sub_A_in.id
  route_table_id = aws_route_table.rt_internet_access.id
}
resource "aws_route_table_association" "internet_access_sub_B_in" {
  subnet_id      = aws_subnet.sub_B_in.id
  route_table_id = aws_route_table.rt_internet_access.id
}
resource "aws_route_table_association" "internet_access_sub_C_in" {
  subnet_id      = aws_subnet.sub_C_in.id
  route_table_id = aws_route_table.rt_internet_access.id
}