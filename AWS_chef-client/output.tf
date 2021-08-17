output "Instance_Name" {
    value = aws_instance.chef-client.public_dns
}
output "Instance_Type" {
    value = aws_instance.chef-client.instance_type
}
output "AMI_ID" {
    value = aws_instance.chef-client.ami
}
output "Public_IP" {
    value = aws_instance.chef-client.public_ip
}
