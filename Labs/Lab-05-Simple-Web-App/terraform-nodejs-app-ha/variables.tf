variable "port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 3000
}

variable "alb_name" {
  description = "The name of the ALB"
  type        = string
  default     = "terraform-asg-example"
}

variable "instance_security_group_name" {
  description = "The name of the security group for the EC2 Instances"
  type        = string
  default     = "terraform-example-instance"
}

variable "alb_security_group_name" {
  description = "The name of the security group for the ALB"
  type        = string
  default     = "terraform-example-alb"
}

variable "image_id" {
  description = "Web App AMI ID"
  type        = string
}

variable "instance_type" {
  description = "AWS EC2 Instances type"
  type        = string
  default     = "t2.micro"
}
