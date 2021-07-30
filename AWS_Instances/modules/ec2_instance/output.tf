output "Instance_Name" {
    value = aws_instance.Davinder_Automate.*.id
}
output "Instance_Type" {
    value = aws_instance.Davinder_Automate.*.instance_type
}
output "AMI_ID" {
    value = aws_instance.Davinder_Automate.*.ami
}
output "Public_IP" {
    value = aws_instance.Davinder_Automate.*.public_ip
}