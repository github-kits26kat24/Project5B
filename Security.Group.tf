//This is the security group for the development environment
# Creating SECURITY GROUP
# Resource: aws_security_group
# https://registry.terraform.io/providers/hashicorp/aws/3.73.0/docs/resources/security_group

//This is the security group for the development environment

resource "aws_security_group" "toolserver_sg" {
  name        = "tool.server.sg"
  description = "Allow SSH and HTTP Connection"
  vpc_id      = aws_vpc.toolserver.id

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

    ingress {
    description = "HTTP from VPC"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}