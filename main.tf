module "jmeter_server" {
  source = "./modules/jmeter-and-plugins"

  # required for jmeter-server
  aws_ami           = "ami-001089eb624938d9f"
  aws_instance_type = "t2.small"
  aws_key_name      = "terraform"
  jmeter_version    = "5.4.3"
  jmeter_plugins    = ["jpgc-casutg"]
}