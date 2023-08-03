resource "aws_internet_gateway" "toolserver-gw" {
  vpc_id = aws_vpc.toolserver.id

  tags = {
    Name = "Tool-Server-Main"
  }
}