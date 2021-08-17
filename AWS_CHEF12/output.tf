output "Instance_Name" {
    value = aws_instance.chef12.public_dns
}
output "Instance_Type" {
    value = aws_instance.chef12.instance_type
}
output "AMI_ID" {
    value = aws_instance.chef12.ami
}
output "Public_IP" {
    value = aws_instance.chef12.public_ip
}
