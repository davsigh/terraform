data "terraform_remote_state" "terraform_state" {
  backend = "local"
  config = {
    path = "/Users/dasingh/Documents/CHEF-Trainings/terraform_base/network-terraform.tfstate"
   }
}
resource "aws_instance" "Davinder_Webserver" {
    ami = var.ami_id
    instance_type = var.instance_type
    subnet_id = data.terraform_remote_state.terraform_state.outputs.Subnet_ID
    key_name = data.terraform_remote_state.terraform_state.outputs.MY_KEY_PAIR
    vpc_security_group_ids = data.terraform_remote_state.terraform_state.outputs.SG
    tags = {
    Name = var.tags_vm_name
    X-Dept = var.tags_Dept
    X-Contact = var.tags_Contact
    X-TTL = var.tags_XTTL
    X-Project = var.tags_Project
    X-Customer = var.tags_Xcustomer
    }
  
}
