# Mandatory variable to change based on your name
##### Easy option --> just search "Davinder" & replace with your "OWN" name ####### 
##### Create a new profile in "~/.aws/credentials" directory with AWS aws_access_key_id & aws_secret_access_key #####
variable "region" {
    default = "us-east-1"
}
variable "profile_name" {
  default = "Davinder"
}
variable "tags_Dept" {
    default = "CA"
}
variable "tags_Contact" {
    default = "davinder.singh@progress.com"
}
variable "tags_XTTL" {
    default = "4days"
}
variable "tags_Project" {
    default = "Learning"
}
variable "tags_Xcustomer" {
    default = "Internal"
}
variable "key_pair_name" {
    default = "mykeys"
}
variable "my_public_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC75QqWFQ41M438KtNTahiRLsM88kRZc++Pxacw5Ls0yQI/FCnNBFxYqZRg9UJ+FZsfAbwq8BaiLFVbRIgBN1++ZWDMm56LkQinaedJMKg22ATRuGqIIRuIp0yWwEvmn9jZ4G6McYwDc7VT0ANa+QdEYCcQjAP6lIUUug7ObKbWadeikIyp+lo/FOUJ8k5KKWyeWEuLg/Q7jYUy7QhnWywAGqVHhydy9ObAgBLRT4MnVky69FHWzYDBcmgd3qCbxtBwY16N3vEDe/LFRbgml09+i+wILer6Qh4djwWLOKm+CYq+8mI11lfLOoVH7IFh3Ow4ZmRKXXwXR2dZlrzwyxQhA8NjuYZYrGmD5Pckg+2aXQCVi0RqgpNiaNgg2mCyZji7s953KC5waD4hXy3yXXZ8QjIvNgKGDsYfTAUYVSEh1QIJuPxqoA0d8Ka49MNBPlTiiDjmfRzm4Yky1WTv76A4ERBZwtInMpTrtwCscgYMK3GqpFUorOD15iZrJXQ5Juk= dasingh@mcblrdasingh"
}
variable "ami_id" {
  default = "ami-0b0af3577fe5e3532"
}
variable "instance_type" {
  default = "t2.large"
}
variable "tags_vm_name_automate" {
  default = "Automate"
}
variable "tags_vm_name_ChefServer" {
  default = "ChefServer"
}
variable "instance_count_main" {
  default = 2
}