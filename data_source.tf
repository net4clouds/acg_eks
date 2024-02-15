data "aws_availability_zones" "azs" {
  state = "available"
}

data "aws_iam_policy" "eks-node" {
  arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}


#data "aws_ami" "centos8" {
#  most_recent      = true
#  name_regex       = "^myami-\\d{3}"
#  owners           = ["self"]
#
#  filter {
#    name   = "name"
#    values = ["myami-*"]
#  }
#
#data "aws_ami" "vpn-ami" {
#  most_recent      = true
#  name_regex       = "^centos-openvpn-*"
#  owners           = ["self"]
#}

#data "aws_ami" "centos7-ami" {
#  most_recent      = true
#  name_regex       = "^centos_base-*"
#  owners           = ["self"]
#}

#data "aws_ami" "master-ami" {
#  most_recent      = true
#  name_regex       = "^master-*"
#  owners           = ["self"]
#}
#
#data "aws_instance" "master" {
#  filter {
#    name   = "tag:Name"
#    values = ["master"]
#  }
#}  
	
#data "aws_vpc_endpoint_service" "s3" {
#  service      = "s3"
#  service_type = "Gateway"
#}

#data "aws_route_table" "rt_local" {
#  filter {
#    name = "route.destination-cidr-block"
#    values	= [var.cidr]
# }
#}


#data "aws_route_table" "rt_local" {
#  routes {
#  cidr_block = var.cidr
#  }
#}

data "aws_ec2_local_gateway" "local" {
  id = var.local_gateway_id
}