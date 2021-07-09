
resource "aws_instance" "Davinder_Webserver" {
    ami = var.ami_module
    instance_type = var.instance_type_module
    count = var.instance_count_web_module
    subnet_id = var.subnet_id_module
    key_name = var.key_name_module
    vpc_security_group_ids = var.vpc_security_group_ids_module
    tags = var.tags_module
    }
  
