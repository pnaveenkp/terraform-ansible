data "aws_vpc" "ansible_vpc" {
  id = "vpc-0c3187d3f180cb286"
}

resource "aws_vpc_peering_connection" "foo" {
  peer_vpc_id   = data.aws_vpc.ansible_vpc.id
  vpc_id        = aws_vpc.default.id
  auto_accept   = true

  accepter {
    allow_remote_vpc_dns_resolution = true
  }

  requester {
    allow_remote_vpc_dns_resolution = true
  }

  tags = {
    Name ="Ansible-${var.vpc_name}-peering"
    Owner= "Naveen"
    environment= "${var.environment}"
  }
}
resource "aws_route" "peering" {
  route_table_id            = aws_route_table.terraform-public.id
  destination_cidr_block    = "20.0.0.0/16"
  vpc_peering_connection_id = aws_vpc_peering_connection.foo.id
  depends_on                = [aws_route_table.terraform-public]
}

