terraform {
  required_version = ">= 0.15.5"
}

provider "aws" {
  region = "ap-southeast-2"

}

resource "aws_instance" "example" {
  ami                    = "ami-0f39d06d145e9bb63"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.instance.id]

  user_data = <<-EOF
              #!/bin/bash
              echo "Hello from internet" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF

  tags = {
    Name = "web-server"
  }
}

resource "aws_security_group" "instance" {

  name = var.security_group_name

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

variable "security_group_name" {
  description = "The name of the security group"
  type        = string
  default     = "web-server-instance"
}

output "public_ip" {
  value       = aws_instance.example.public_ip
  description = "The public IP of the Instance"
}
