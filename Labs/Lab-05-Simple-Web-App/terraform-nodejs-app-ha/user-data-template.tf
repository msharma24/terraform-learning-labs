# A User Data script that will run when the EC2 instance boots up and start the Ruby on Rails server
data "template_file" "user_data" {
  template = file("${path.module}/user-data.sh")

  vars = {
    port = var.port
  }
}
