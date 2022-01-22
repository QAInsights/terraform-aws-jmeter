variable "aws_profile" {
  description = "The value for aws_profile"
  default = "default"
}
variable "aws_region" {
  default = "us-east-2"
}
variable "aws_ami" {}
variable "aws_instance_type" {}
variable "aws_key_name" {}

variable "jmeter_home" {
  default = "/home/ec2-user"
}

variable "jmeter_version" {
  default = "5.4.3"
}

variable "jmeter_plugins" {
  type    = list(string)
  default = ["jpgc-casutg", "jmeter-jdbc"]
}

variable "jmeter_cmdrunner_version" {
  default = "2.2"
}
variable "jmeter_plugins_manager_version" {
  default = "1.7"
}