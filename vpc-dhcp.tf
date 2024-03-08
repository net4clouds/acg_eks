resource "aws_vpc_dhcp_options" "main" {
  domain_name_servers  = "AmazonProvidedDNS"
  tags = {
    Name = "main_vpc_dhcp"
  }
}

resource "aws_vpc_dhcp_options_association" "dns_resolver" {
  vpc_id          = aws_vpc.main.id
  dhcp_options_id = aws_vpc_dhcp_options.main.id
}