# Immutable Infrastructure with Packer example

This directory contains an example of how define infrastructure-as-code using [Packer](https://www.packer.io/). The
`example-nodejs-app-ami.pkr.hcl` Packer template shows how to create an AMI containing a simple web server that you can deploy
in AWS.

## Deploy

1. Install [Packer](https://www.packer.io/).
2. Add your AWS credentials as the environment variables `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`.
3. Run `packer build example-nodejs-app-ami.pkr.hcl`.
4. When the build is done, it'll output the ID of an AMI in `ap-southeast-2` that you can deploy.
See the
   `terraform-nodejs-app-basic` and `terraform-nodejs-app-ha` directory for an example of how to deploy this AMI and run the Nodeejs app within it.

