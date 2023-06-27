resource "aws_instance" "app" {
  ami                        = "ami-0c1d144c8fdd8d690"
  instance_type              = "t3.micro"

  tags = {
    Name = "MyFirstTerraformInstance"
  }
}

output "private_dns" {
    value   =   aws_instance.app.private_dns
}