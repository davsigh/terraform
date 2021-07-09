data "terraform_remote_state" "terraform_state" {
  backend = "local"
  config = {
    path = "/Users/dasingh/Documents/CHEF-Trainings/terraform_base/network-terraform.tfstate"
   }
}
module "webserver" {
  source = "/Users/dasingh/Documents/CHEF-Trainings/terraform_base/Terraform_final/AWS_Instances/modules/ec2_instance"
    ami_module = var.ami_id
    instance_type_module = var.instance_type
    instance_count_web_module = var.instance_count_main
    subnet_id_module = data.terraform_remote_state.terraform_state.outputs.Subnet_ID
    key_name_module = data.terraform_remote_state.terraform_state.outputs.MY_KEY_PAIR
    vpc_security_group_ids_module = data.terraform_remote_state.terraform_state.outputs.SG
    tags_module = {
    Name = var.tags_vm_name
    X-Dept = var.tags_Dept
    X-Contact = var.tags_Contact
    X-TTL = var.tags_XTTL
    X-Project = var.tags_Project
    X-Customer = var.tags_Xcustomer
    }
  
}
