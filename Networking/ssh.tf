resource "aws_key_pair" "mykeys" {
    key_name = var.key_pair_name
    public_key = var.my_public_key
}