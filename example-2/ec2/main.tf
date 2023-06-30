resource "aws_instance" "app" {
  ami                        = "ami-0c1d144c8fdd8d690"
  instance_type              = "t2.micro"
   vpc_security_group_ids     = [var.sg]


  tags = {
    Name = "MyFirstTerraformin"
  }
}


variable "sg" {}

output "public_ip"{
    value = aws_instance.app.public_ip
}