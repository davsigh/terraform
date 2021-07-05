output "MY_KEY_PAIR" {
    value = aws_key_pair.mykeys.id
}
output "VPC_NAME" {
    value = aws_vpc.davinder-vpc.id
}
output "Subnet_ID" {
    value = aws_subnet.public-subnet.id
}
output "Routing_Table_ID" {
    value = aws_route_table.public_RT.id
  
}
output "IGW_ID" {
    value = aws_internet_gateway.igw.id
  
}
output "SG" {
    value = aws_security_group.my_sg.*.id
}