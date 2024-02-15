resource "aws_subnet" "sub_A_in" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.sub_A_in_cidr
  availability_zone = data.aws_availability_zones.azs.names[0]
    tags = {
    Name = "sub_A_in"
  }
}
resource "aws_subnet" "sub_B_in" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.sub_B_in_cidr
  availability_zone = data.aws_availability_zones.azs.names[1] 
    tags = {
    Name = "sub_B_in"
  }
}
resource "aws_subnet" "sub_C_in" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.sub_C_in_cidr
  availability_zone = data.aws_availability_zones.azs.names[2] 
    tags = {
    Name = "sub_C_in"
  }
}
resource "aws_subnet" "sub_A_pub" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.sub_A_pub_cidr
  availability_zone = data.aws_availability_zones.azs.names[0] 
    tags = {
    Name = "sub_A_pub"
  }
}
resource "aws_subnet" "sub_B_pub" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.sub_B_pub_cidr
  availability_zone = data.aws_availability_zones.azs.names[1]
    tags = {
    Name = "sub_B_pub"
  }
}
resource "aws_subnet" "sub_C_pub" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.sub_C_pub_cidr
  availability_zone = data.aws_availability_zones.azs.names[2] 
    tags = {
    Name = "sub_C_pub"
  }
}
