output "public_ip" {
  description = "The public IP address assigned to the instance, if applicable. NOTE: If you are using an aws_eip with your instance, you should refer to the EIP's address directly and not use `public_ip` as this field will change after the EIP is attached"
  value       = aws_instance.this.public_ip
}
output "private_ip" {
  description = "The private IP address assigned to the instance."
  value       = aws_instance.this.private_ip
}

output "instance_state" {
  description = "The state of the instance. One of: `pending`, `running`, `shutting-down`, `terminated`, `stopping`, `stopped`"
  value       = aws_instance.this.instance_state
}

output "arn" {
  description = "The ARN of the instance"
  value       = aws_instance.this.arn
}

output "jmeter_version" {
  description = "JMeter version installed on the instance"
  value       = var.jmeter_version
}
output "jmeter_plugins" {
  description = "JMeter plugins installed"
  value       = var.jmeter_plugins
} 

output "availability_zone" {
  description = "The availability zone the instance is in"
  value       = var.availability_zone
}

