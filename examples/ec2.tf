resource "aws_instance" "app" {
  ami                        = "ami-0fa1ba08307b907ac"
  instance_type              = "t3.micro"

  tags = {
    Name = "MyFirstTerraformInstance"
  }
}

output "private_dns" {
    value   =   aws_instance.app.private_dns
}