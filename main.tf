module "jmeter_server" {
  source = "./modules/jmeter-and-plugins"

  # required for jmeter-server
  aws_ami           = "ami-001089eb624938d9f"
  aws_instance_type = "t2.micro"
}