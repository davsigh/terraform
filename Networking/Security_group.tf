resource "aws_security_group" "my_sg" {
    name = var.tags_my_sg
    vpc_id = aws_vpc.davinder-vpc.id
    ingress  {
      cidr_blocks = [ "0.0.0.0/0" ]
      description = "SSH Port"
      from_port = 22
      protocol = "tcp"
      to_port = 22
    } 
    ingress  {
      cidr_blocks = [ "0.0.0.0/0" ]
      description = "HTTP Port"
      from_port = 80
      protocol = "tcp"
      to_port = 80
    } 
    egress {
      cidr_blocks = [ "0.0.0.0/0" ]
      description = "outbound allowed all traffic"
      from_port = 0
      protocol = -1
      to_port = 0
    } 
}