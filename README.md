# JMeter Terraform

This repo will help you to spin up an AWS EC2 instance with Java, JMeter, and JMeter Plugins installed.

## Prerequisites

* Terraform
* AWS Console w/ IAM role

## Setup

### AWS Key Pair

* Log into AWS console
* Navigate to EC2 -> Key Pairs
* Create a new key pair w/ RSA and Private Key format (PEM) 
* Save the private key to a file in a secure location

### Terraform Configuration

To configure JMeter variables, refer `variables.tf`  
To configure JMeter URLs, refer `main.tf`  
To configure JMeter Plugins, refer `variables.tf` > `jmeter_plugins` variable  
To configure AWS Key pair name, refer `variables.tf` > `aws_key_name` variable  

By default, it will spin up an `t2.micro` instance with `us-east-2` availability zone.

## Terraform Plan and Apply

* Clone this repo
* cd into the directory
* Run `terraform init`
* Run `terraform plan`
* Run `terraform apply` when prompted to continue, enter `yes` to spin up the instance

## Outputs

When you plan and apply, you will see the following outputs:

```
  + arn            = (known after apply)
  + instance_state = (known after apply)
  + jmeter_version = "5.4.3"
  + private_ip     = (known after apply)
  + public_ip      = (known after apply)
```

## JMeter validation

ssh into the instance using the PEM and run `jmeter -v` to verify JMeter is installed and working.