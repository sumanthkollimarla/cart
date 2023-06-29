resource "aws_security_group" "sumanth-1" {
  name        = "sumanth-1"
  description = "Allow SSH inbound traffic"

    ingress {
      description      = "SSH From VPC"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
    }
  
    ingress {
      description      = "HTTP From Public"
      from_port        = 80
      to_port          = 80
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
    }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "sumanth-1"
  }
}

output "sgid" {
    value  =  aws_security_group.sumanth-1.id
}