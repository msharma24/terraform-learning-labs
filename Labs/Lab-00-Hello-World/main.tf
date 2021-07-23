terraform {
  required_version = ">= 0.15.5"
}

provider "aws" {
  region = "ap-southeast-2"

}

resource "aws_instance" "hello_world" {
  ami           = "ami-0f39d06d145e9bb63"
  instance_type = "t2.micro"

  tags = {
    Name = "Hello World !"
  }
}

