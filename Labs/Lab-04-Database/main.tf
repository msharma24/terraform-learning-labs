terraform {
  required_version = ">= 0.12.26"
}


provider "aws" {
  region = "ap-southeast-2"
}

# ------------------------------------------------------------------------------
# DEPLOY MYSQL ON RDS
# ------------------------------------------------------------------------------

resource "aws_db_instance" "example" {
  identifier_prefix = "terraform-mysql-rds-example"
  engine            = "mysql"
  allocated_storage = 10
  instance_class    = "db.t2.micro"
  name              = "test_database"
  username          = "admin"
  password          = var.db_password

  skip_final_snapshot = true
}
