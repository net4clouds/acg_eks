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

resource "aws_route_table_association" "internet_access_sub_A_pub" {
  subnet_id      = aws_subnet.sub_A_pub.id
  route_table_id = aws_route_table.rt_pub_internet_access.id
}

resource "aws_route_table_association" "internet_access_sub_B_pub" {
  subnet_id      = aws_subnet.sub_B_pub.id
  route_table_id = aws_route_table.rt_pub_internet_access.id
}

resource "aws_route_table_association" "internet_access_sub_C_pub" {
  subnet_id      = aws_subnet.sub_C_pub.id
  route_table_id = aws_route_table.rt_pub_internet_access.id
}

resource "aws_route_table_association" "infra" {
  subnet_id      = data.aws_subnet.infra-subnet.id
  route_table_id = aws_route_table.rt_internet_infra.id
}