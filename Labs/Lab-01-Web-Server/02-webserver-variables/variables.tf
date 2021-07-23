variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 8080
}

variable "number_example" {
  description = "An example of a number variable in Terraform"
  type        = number
  default     = 42
}

variable "list_example" {
  description = "An example of a list in Terraform"
  type        = list(any)
  default     = ["a", "b", "c"]
}

variable "list_numeric_example" {
  description = "An example of a numeric list in Terraform"
  type        = list(number)
  default     = [1, 2, 3]
}

variable "map_example" {
  description = "An example of a map in Terraform"
  type        = map(string)

  default = {
    key1 = "value1"
    key2 = "value2"
    key3 = "value3"
  }
}

variable "object_example" {
  description = "An example of a structural type in Terraform"
  type = object({
    name    = string
    age     = number
    tags    = list(string)
    enabled = bool
  })

  default = {
    name    = "value1"
    age     = 42
    tags    = ["a", "b", "c"]
    enabled = true
  }
}

variable "security_group_name" {
  description = "The name of the security group"
  type        = string
  default     = "terraform-example-instance"
}

variable "ami_id" {
  description = "AMI ID of the instance"
  type        = string
  default     = "ami-0f39d06d145e9bb63"


}


variable "ec2_instance_type" {
  description = "AWS EC2 Instance type"
  type        = string
  default     = "t2.micro"
}

variable "aws_region" {
  description = "AWS Region id"
  default     = "ap-southeast-2"
  type        = string
}

variable "security_group_cidr_blocks" {
  description = "List of CIDR Blocks"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
