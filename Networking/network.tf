resource "aws_vpc" "davinder-vpc" {
  cidr_block = var.vpc_cidr_block
  instance_tenancy = "default"
  enable_dns_hostnames = true
tags = {
  Name = var.tags_vpc-Name
  X-Dept = var.tags_Dept
  X-Contact = var.tags_Contact
  X-TTL = var.tags_XTTL
  X-Project = var.tags_Project
  X-Customer = var.tags_Xcustomer
}
}
resource "aws_subnet" "public-subnet" {
  vpc_id = aws_vpc.davinder-vpc.id
  cidr_block = var.public_subnet_cidr_block
  map_public_ip_on_launch = true
  tags = {
    Name = var.tags_subnet_name
    X-Dept = var.tags_Dept
    X-Contact = var.tags_Contact
    X-TTL = var.tags_XTTL
    X-Project = var.tags_Project
    X-Customer = var.tags_Xcustomer
  }
}
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.davinder-vpc.id
  tags = {
    Name = var.tags_igw_name
  }
}
resource "aws_route_table" "public_RT" {
  vpc_id = aws_vpc.davinder-vpc.id 
  route   {
    cidr_block = var.public_rt_cidr_block
    gateway_id = aws_internet_gateway.igw.id
  } 
  tags = {
    Name = var.tags_default_rt_name
  }
}
resource "aws_route_table_association" "my_rt_association" {
  subnet_id = aws_subnet.public-subnet.id
  route_table_id = aws_route_table.public_RT.id
}