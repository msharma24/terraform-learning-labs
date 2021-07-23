# Terraform S3 Bucket example 
This directory contains of a [Terraform](https://www.terraform.io/)  S3 bucket resource configuration. The configuration
deploys a single S3 Bucket in an [Amazon Web Services (AWS) account](http://aws.amazon.com/).


## Deploy


Configure your [AWS access
keys](http://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html#access-keys-and-secret-access-keys) as
Environment variables:

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
