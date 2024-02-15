resource "aws_security_group" "ssh-internal" {
  name        = "ssh-internal"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.internet_cidr]
  }

  tags = {
    Name = "ssh-internal"
  }
}

resource "aws_security_group" "ssh-private" {
  name        = "ssh-private"
  description = "Allow SSH inbound traffic from private natworks"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.sub_A_in_cidr,var.sub_B_in_cidr,var.sub_C_in_cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.cidr]
  }

  tags = {
    Name = "ssh-private"
  }
}



resource "aws_security_group" "vpn" {
  name        = "vpn"
  description = "Allow VPN inbound traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port   = 80 
    to_port     = 80 
    protocol    = "tcp"
    cidr_blocks = [var.internet_cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.internet_cidr]
  }

  tags = {
    Name = "vpn-external"
  }
}

resource "aws_security_group" "all" {
  name        = "all"
  description = "Allow all inbound traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.internet_cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.internet_cidr]
  }

  tags = {
    Name = "all-internal"
  }
}

resource "aws_security_group" "proxy" {
  name        = "proxy"
  description = "Allow access to proxy"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "proxy"
    from_port   = 3128 
    to_port     = 3128 
    protocol    = "tcp"
    cidr_blocks = [var.sub_A_in_cidr,var.sub_B_in_cidr,var.sub_C_in_cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.cidr]
  }

  tags = {
    Name = "proxy"
  }
}

resource "aws_security_group" "http-private" {
  name        = "http-private"
  description = "Allow access to http from private subnets"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port   = 80 
    to_port     = 80 
    protocol    = "tcp"
    cidr_blocks = [var.sub_A_in_cidr,var.sub_B_in_cidr,var.sub_C_in_cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.cidr]
  }

  tags = {
    Name = "http-private"
  }
}

resource "aws_security_group" "http-internal" {
  name        = "http-internal"
  description = "Allow access to http from internal subnets"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.cidr]
  }

  tags = {
    Name = "http-internal"
  }
}

resource "aws_security_group" "https-private" {
  name        = "https-private"
  description = "Allow access to https from private subnets"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [var.sub_A_in_cidr,var.sub_B_in_cidr,var.sub_C_in_cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.cidr]
  }

  tags = {
    Name = "https-private"
  }
}

resource "aws_security_group" "https-internal" {
  name        = "https-internal"
  description = "Allow access to https from internal subnets"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [var.cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.cidr]
  }

  tags = {
    Name = "https-internal"
  }
}

resource "aws_security_group" "k8s" {
  name        = "k8s"
  description = "Allow access to k8s cluster management"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port   = 6443
    to_port     = 6443
    protocol    = "tcp"
    cidr_blocks = [var.cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.cidr]
  }

  tags = {
    Name = "k8s"
  }
}
