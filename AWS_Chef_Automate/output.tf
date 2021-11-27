output "Instance_Name" {
    value = aws_instance.automate.public_dns
}
output "Instance_Type" {
    value = aws_instance.automate.instance_type
}
output "AMI_ID" {
    value = aws_instance.automate.ami
}
output "Public_IP" {
    value = aws_instance.automate.public_ip
}
