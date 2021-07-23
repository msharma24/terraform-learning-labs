# ---------------------------------------------------------------------------------------------------------------------
# ENVIRONMENT VARIABLES
# Define these secrets as environment variables
# ---------------------------------------------------------------------------------------------------------------------

# AWS_ACCESS_KEY_ID
# AWS_SECRET_ACCESS_KEY

# ---------------------------------------------------------------------------------------------------------------------
# MODULE PARAMETERS
# These variables are expected to be passed in by the operator
# ---------------------------------------------------------------------------------------------------------------------

variable "ec2_name" {
  description = "The name of the EC2 Instance."
  type        = string
}

variable "key_pair_name" {
  description = "The name of a Key Pair that you've created in AWS and have saved on your computer. You will be able to use this Key Pair to SSH to the EC2 instance."
  type        = string
}
