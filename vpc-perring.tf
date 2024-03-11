resource "aws_vpc_peering_connection" "infra-main" {
  peer_vpc_id   = aws_vpc.main.id
  vpc_id        = data.aws_vpc.infra-vpc.id
  auto_accept   = true
  
  accepter {
    allow_remote_vpc_dns_resolution = true
  }

  requester {
    allow_remote_vpc_dns_resolution = true
  }
}