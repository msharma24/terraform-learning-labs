# Web Server Example

This directory contains an example [Terraform](https://www.terraform.io/) configuration that deploys a single web server (using 
[EC2](https://aws.amazon.com/ec2/)) in an [Amazon Web Services (AWS) account](http://aws.amazon.com/). The web server
listens on port 8080 (which is defined as a variable in this example) and returns the text "Hello, World" for the `/` 
URL.



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

When the `apply` command completes, it will output the public IP address of the server. To test that IP:

```
curl http://(server_public_ip):8080/
```

Clean up when you're done:

```
terraform destroy
```
