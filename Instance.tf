
resource "aws_instance" "Tool_Server_Node" {

  ami                    = "ami-04f7efe62f419d9f5"
  instance_type          = "t2.micro"
  key_name               = "Kitskat2023"
  subnet_id              = aws_subnet.toolserver.id
  vpc_security_group_ids = [aws_security_group.toolserver_sg.id]
  tags = {
    Name = "Tool-Server"
  }
}
