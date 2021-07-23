# AWS Terraform OSS Labs

--

# Terraform learning resources
The best way to learn Terraform and practice IaC is by using the  resources available from the official documentation to our advantage.

 - Introduction to Terraform [https://www.terraform.io/intro/index.html](https://www.terraform.io/intro/index.html)
 - Terraform Language Documentation [https://www.terraform.io/docs/language/index.html](https://www.terraform.io/docs/language/index.html)
 - AWS Provider Documentation [https://registry.terraform.io/providers/hashicorp/aws/latest/docs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
 - Terraform documentation as PDF[ https://www.dropbox.com/sh/pfj9e1m5d7nqhp3/AAAqW1OI3oYPa4UXfYb4fLGaa](https://www.dropbox.com/sh/pfj9e1m5d7nqhp3/AAAqW1OI3oYPa4UXfYb4fLGaa)
 - Terraform Glossary [https://www.terraform.io/docs/glossary.html](https://www.terraform.io/docs/glossary.html)
 - Terraform AWS Provider Changelog [https://github.com/hashicorp/terraform-provider-aws/blob/main/CHANGELOG.md
](https://github.com/hashicorp/terraform-provider-aws/blob/main/CHANGELOG.md)
- Terraform version Changelog [https://github.com/hashicorp/terraform/blob/main/CHANGELOG.md
](https://github.com/hashicorp/terraform/blob/main/CHANGELOG.md)


# Labs

```Labs
├── Lab-00-Hello-World
├── Lab-01-Web-Server
│   ├── webserver
│   ├── webserver-2-with-vars
│   └── webserver-cluster
├── Lab-03-Terraform-State
│   ├── s3-bucket
│   └── server
├── Lab-04-Database
└── Lab-05-Simple-Web-App
    |__ example-nodejs-app
    ├── packer-example
    ├── terraform-nodejs-app-basic
    └── terraform-nodejs-app-ha 
```

# Learning Objectives
### Core Terraform Workflow
The basic steps you will follow with Terraform are:
  - Write
  - Plan
  - Apply


Then rinse, and repeat.

# Most useful Terraform commands
```
terraform version       # print the Terraform version
terraform init          # Initialise the current directory
terraform plan          # Dry run to see the Terraform configuration
terraform apply         # Apply the Terraform code and build resources
terraform destroy       # Refresh the state file
terraform output        # View Terraform outputs
```
 `terraform <subcommand> ->-help to view the command help information`
 
### Authenticate Terraform with AWS
[https://registry.terraform.io/providers/hashicorp/aws/latest/docs#authentication](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#authentication)

### Code Comments in Terraform
[https://www.terraform.io/docs/language/syntax/configuration.html#comments](https://www.terraform.io/docs/language/syntax/configuration.html#comments)

### Anatomy of a Terraform Resource
Every Terraform resource is structured exactly the same way
```
 resource <type> <name> {
   Config...
 
 }
```
- resource - The top level keyword
- type - Type of resource example - `aws_instance`
- name - An arbitrary name to refer to this resource. Used internally by Terraform.

### Terraform Provider Configuration

[https://www.terraform.io/docs/language/providers/index.html](https://www.terraform.io/docs/language/providers/index.html)


The Terraform core program requires at least one provider to build anything.

You can manually configure which version(s) of a provider you would like to use in Terraform Settings block `terraform {}` block.
```
 proivider "aws" {
  region = "ap-southeast-2"
 }
 ```
