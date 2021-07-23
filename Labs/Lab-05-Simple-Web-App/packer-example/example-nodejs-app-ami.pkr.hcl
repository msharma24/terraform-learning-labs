locals { timestamp = regex_replace(timestamp(), "[- TZ:]", "") }

source "amazon-ebs" "nodejs_ami" {
  ami_name      = "example-nodejs-app-AMI-${local.timestamp}"
  instance_type = "t2.micro"
  region        = "ap-southeast-2"
  source_ami_filter {
    filters = {
      name               = "ubuntu/images/*ubuntu-bionic-18.04-amd64-server-*"
      root-device-type    = "ebs"
      virtualization-type = "hvm"
    }
    most_recent = true
    owners      = ["099720109477"] #Official Canonical account id
  }
  ssh_username = "ubuntu"
}

# a build block invokes sources and runs provisioning steps on them.
build {
  sources = ["source.amazon-ebs.nodejs_ami"]

  provisioner "shell" {
    inline = ["echo '[INFO] Sleep 30 seconds for Ubuntu to bootup' && sleep 30"]
  }
  provisioner "shell" {
    scripts = [
      "./install-nodejs.sh"
    ]

  }
  provisioner "file" {
      source = "../example-nodejs-app"
      destination = "/home/ubuntu"
  }

  provisioner "shell" {
    inline = [
      "cd /home/ubuntu/example-nodejs-app",
      "npm install"
    ]
  }

}

