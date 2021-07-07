
resource "aws_instance" "Davinder_Webserver" {
    ami = var.ami
    instance_type = var.instance_type
    subnet_id = var.subnet_id
    key_name = var.key_name
    vpc_security_group_ids = var.vpc_security_group_ids
    tags = var.tags
    }
