# create security group for the web server
# terraform aws create security group
# Create Security Group for the Web Server
resource "aws_security_group" "webserver_security_group" {
  name        = "web-sg"
  description = "Enable HTTP/HTTPS access on port 80/443 and SSH access on port 22"
  vpc_id      = aws_vpc.vpc.id # Reference to your VPC resource

  ingress {
    description = "HTTP access"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "SSH access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "webserver-security-group"
  }
}
