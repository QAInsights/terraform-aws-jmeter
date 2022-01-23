# JMeter Terraform

This repo will help you to spin up an AWS EC2 instances with Java, JMeter, and JMeter Plugins installed.

## Prerequisites

* Terraform
* AWS Console w/ IAM role

## Setup

### AWS Key Pair

* Log into AWS console
* Navigate to EC2 -> Key Pairs
* Create a new key pair w/ RSA and Private Key format (PEM) 
* Save the private key to a file in a secure location

## Usage

```
module "jmeter" {
  source  = "QAInsights/jmeter/aws"
  version = "1.1.0"

  # insert the 3 required variables here

  aws_ami = "ami-001089eb624938d9f"
  aws_instance_type = "t2.micro"
  aws_key_name = "terraform"
}
```

By default, it will spin up an `t2.micro` instance with `us-east-2` availability zone. Refer to the [AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-types.html) for more information.

To configure other input variables, refer to the [documentation](https://registry.terraform.io/modules/QAInsights/jmeter/aws/latest?tab=inputs#optional-inputs).

To configure [outputs](outputs.tf), refer to the [documentation](https://registry.terraform.io/modules/QAInsights/jmeter/aws/latest?tab=outputs).

## Terraform Plan and Apply

* Run `terraform init`
* Run `terraform plan`
* Run `terraform apply` when prompted to continue, enter `yes` to spin up the instance

## Terraform Graph

![Graph](https://raw.githubusercontent.com/QAInsights/terraform-aws-jmeter/main/graph/graph.svg)

## JMeter validation

ssh into the instance using the PEM and run `jmeter -v` to verify JMeter is installed and working.

## Reference

* https://www.terraform.io/
* http://aws.amazon.com/
* http://jmeter.apache.org/