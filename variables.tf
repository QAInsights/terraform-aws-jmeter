
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

variable "jmeter_version" {
  description = "The version of JMeter to install"
  default     = "5.4.3"
  type        = string
}

variable "jmeter_plugins" {
  type        = list(string)
  description = "List of JMeter plugins to install"
  default     = null
}
 