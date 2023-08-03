resource "aws_route_table_association" "table_toolserver_rta" {
  subnet_id      = aws_subnet.toolserver.id
  route_table_id = aws_route_table.toolserver_rt.id
}