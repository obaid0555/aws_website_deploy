# Use data source to retrieve an Amazon Linux 2 AMI
# Use data source to retrieve an Amazon Linux 2 AMI
data "aws_ami" "amazon_linux_2" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

# launch ec2 instance and install your website
resource "aws_instance" "ec2_instance" {
  ami                    = data.aws_ami.amazon_linux_2.id
  subnet_id              = aws_subnet.public_subnet_az1.id # Reference your public subnet resource
  instance_type          = "t2.micro"
  key_name               = "datadots-nv"                                    # Replace with your actual key pair name
  vpc_security_group_ids = [aws_security_group.webserver_security_group.id] # Reference your security group resource
  user_data              = file("command.sh")

  tags = {
    Name = "website-demo"
  }
}
