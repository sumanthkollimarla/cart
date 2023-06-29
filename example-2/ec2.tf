# resource "aws_instance" "app" {
#   ami                        = "ami-0c1d144c8fdd8d690"
#   instance_type              = "t2.micro"
#    vpc_security_group_ids     = [aws_security_group.sumanth-1.id]


#   tags = {
#     Name = "MyFirstTerraformin"
#   }
# }

# output "private_dns" {
#     value   =   aws_instance.app.private_dns
# }

# resource "aws_security_group" "sumanth-1" {
#   name        = "sumanth-1"
#   description = "Allow SSH inbound traffic"

#     ingress {
#       description      = "Allow SSH From Public"
#       from_port        = 22
#       to_port          = 22
#       protocol         = "tcp"
#       cidr_blocks      = ["0.0.0.0/0"]
#     }
  
#     ingress {
#       description      = "Allow HTTP From Public"
#       from_port        = 80
#       to_port          = 80
#       protocol         = "tcp"
#       cidr_blocks      = ["0.0.0.0/0"]
#     }

#     ingress {
#       description      = "Allow HTTPS From Public"
#       from_port        = 443
#       to_port          = 443
#       protocol         = "tcp"
#       cidr_blocks      = ["0.0.0.0/0"]
#     }


#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#   tags = {
#     Name = "sumanth-1"
#   }
# }