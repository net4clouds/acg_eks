resource "aws_default_route_table" "rt_local_access" {
  default_route_table_id = aws_vpc.main.default_route_table_id
  route = []
  tags = {
    Name = "rt_local_access"
  }
}

resource "aws_route_table" "rt_internet_access" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = var.internet_cidr
    gateway_id = aws_nat_gateway.ngw.id
  }
  route {
    cidr_block = data.aws_vpc.infra-vpc.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.infra-main.id
  }
    tags = {
    Name = "rt_internet_access"
  }
}

resource "aws_route_table" "rt_pub_internet_access" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = var.internet_cidr
    gateway_id = aws_internet_gateway.main.id
  }
    tags = {
    Name = "rt_pub_internet_access"
  }
}