# Terraform "Hello, World" example

This directory contains a "Hello, World" example of a [Terraform](https://www.terraform.io/) configuration. The configuration
deploys a single server in an [Amazon Web Services (AWS) account](http://aws.amazon.com/).


## Deploy


Configure your [AWS access
keys](http://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html#access-keys-and-secret-access-keys) as
environment variables:

```
export AWS_ACCESS_KEY_ID=(your access key id)
export AWS_SECRET_ACCESS_KEY=(your secret access key)
```

Deploy the code:

```
terraform init
terraform apply
```

Clean up when you're done:

```
terraform destroy
```
