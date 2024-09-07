# Create VPC
resource "aws_vpc" "vpc" {
  cidr_block              = "10.0.0.0/16"  # Replace with your desired CIDR block
  instance_tenancy        = "default"
  enable_dns_hostnames    = true

  tags = {
    Name = "vpc-static-website"
  }
}

# create internet gateway and attach it to vpc
# terraform aws create internet gateway
# Create Internet Gateway and attach it to VPC
resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "internet-gateway"
  }
}

# create public subnet az1
# terraform aws create subnet
# Create public subnet Az1
resource "aws_subnet" "public_subnet_az1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.1.0/24"  # Replace with your desired CIDR block
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-Az1"
  }
}

# Create Route Table
resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.vpc.id  # Reference to your VPC resource

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gateway.id  # Reference to your Internet Gateway resource
  }

  tags = {
    Name = "public-route-table"
  }
}

# associate public subnet az1 to "public route table"
# terraform aws associate subnet with route table
# Associate Public Subnet Az1 with Route Table
resource "aws_route_table_association" "public_subnet_az1_route_table_association" {
  subnet_id      = aws_subnet.public_subnet_az1.id  # Reference to your public subnet resource
  route_table_id = aws_route_table.public_route_table.id  # Reference to your route table resource
}