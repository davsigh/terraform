data "terraform_remote_state" "terraform_state" {
  backend = "local"
  config = {
    path = "/Users/dasingh/Documents/CHEF-Trainings/terraform_base/network-terraform.tfstate"
   }
}
resource "aws_instance" "chef12" {
  ami = var.ami_id
  instance_type = var.instance_type
  subnet_id = data.terraform_remote_state.terraform_state.outputs.Subnet_ID
  key_name = data.terraform_remote_state.terraform_state.outputs.MY_KEY_PAIR
  vpc_security_group_ids = data.terraform_remote_state.terraform_state.outputs.SG
  tags = {
    Name = var.tags_vm_name_chef
    X-Dept = var.tags_Dept
    X-Contact = var.tags_Contact
    X-TTL = var.tags_XTTL
    X-Project = var.tags_Project
    X-Customer = var.tags_Xcustomer
  } 
provisioner "file" {
  source = "/Users/dasingh/Documents/CHEF-Trainings/terraform_base/Terraform_final/AWS_CHEF12/chefserver.sh"
  destination = "/tmp/chefserver.sh"
}
provisioner "remote-exec" {
inline = [
  "chmod +x /tmp/chefserver.sh",
  "sudo sh /tmp/chefserver.sh",
 ]
}
connection {
  type = "ssh"
  user = "ec2-user"
  password = ""
  private_key = file(var.keyPath)
  host = self.public_ip
}
}