resource "aws_route_table" "toolserver_rt" {
  vpc_id = aws_vpc.toolserver.id


  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.toolserver-gw.id
  }

  tags = {
    Name = "toolserver-rt"

  }
}