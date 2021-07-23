# Web Server Example

This directory contains an example [Terraform](https://www.terraform.io/) configuration that deploys a cluster of web servers
(using [EC2](https://aws.amazon.com/ec2/) and [Auto Scaling](https://aws.amazon.com/autoscaling/)) and a load balancer
(using [ELB](https://aws.amazon.com/elasticloadbalancing/)) in an [Amazon Web Services (AWS)
account](http://aws.amazon.com/). The load balancer listens on port 3000 and returns working sample web app on the `<alb_dns_name>:3000/`in the browser.


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

When the `apply` command completes, it will output the DNS name of the load balancer. To test the load balancer:

```
curl http://<alb_dns_name>:3000/
```

Clean up when you're done:

```
terraform destroy
```
