resource "aws_instance" "app" {
  ami                        = "ami-0c1d144c8fdd8d690"
  instance_type              = "t2.micro"

  tags = {
    Name = "MyFirstTerraformin"
  }
}

output "private_dns" {
    value   =   aws_instance.app.private_dns
}