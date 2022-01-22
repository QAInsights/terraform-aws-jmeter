output "public_ip" {
  description = "The public IP address assigned to the instance, if applicable. NOTE: If you are using an aws_eip with your instance, you should refer to the EIP's address directly and not use `public_ip` as this field will change after the EIP is attached"
  value       = module.jmeter_server.public_ip
}
output "private_ip" {
  description = "The private IP address assigned to the instance."
  value       = module.jmeter_server.private_ip
}

output "instance_state" {
  description = "The state of the instance. One of: `pending`, `running`, `shutting-down`, `terminated`, `stopping`, `stopped`"
  value       = module.jmeter_server.instance_state
}

output "arn" {
  description = "The ARN of the instance"
  value       = module.jmeter_server.arn
}

output "jmeter_version" {
  description = "JMeter version installed on the instance"
  value       = module.jmeter_server.jmeter_version
}