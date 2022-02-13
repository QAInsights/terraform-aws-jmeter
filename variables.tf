variable "aws_profile" {
  description = "The value for aws_profile"
  default     = "default"
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = null
}
variable "availability_zone" {
  description = "AZ to start the instance in"
  type        = string
  default     = null
}
variable "aws_ami" {
  description = "ID of AMI to use for the instance"
  type        = string
  default     = null
}
variable "aws_instance_type" {
  description = "The type of instance to start"
  type        = string
  default     = null
}
variable "aws_key_name" {
  description = "Key name of the Key Pair to use for the instance; which can be managed using the `aws_key_pair` resource"
  type        = string
  default     = null
}

variable "jmeter_home" {
  description = "The location of the home directory"
  type        = string
  default     = "/home/ec2-user"
}

variable "jmeter_version" {
  description = "The version of JMeter to install"
  default     = "5.4.3"
  type        = string
}

variable "jmeter_plugins" {
  type        = list(string)
  description = "List of JMeter plugins to install"
  default     = null
  validation {
    condition     = length(var.jmeter_plugins) > 0
    error_message = "You must specify at least one JMeter plugin."
  }
}

variable "jmeter_cmdrunner_version" {
  description = "The version of JMeter CommandRunner to install"
  default     = "2.2"
  type        = string
}
variable "jmeter_plugins_manager_version" {
  description = "The version of JMeter Plugins Manager to install"
  type        = string
  default     = "1.7"
}