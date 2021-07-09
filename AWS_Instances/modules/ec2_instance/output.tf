output "Instance_Name" {
    value = aws_instance.Davinder_Webserver.*.id
}
output "Instance_Type" {
    value = aws_instance.Davinder_Webserver.*.instance_type
}
output "AMI_ID" {
    value = aws_instance.Davinder_Webserver.*.ami
}
output "Public_IP" {
    value = aws_instance.Davinder_Webserver.*.public_ip
}