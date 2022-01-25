terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 2.7.0"
    }
  }
}
resource "aws_instance" "this" {
  availability_zone = var.availability_zone
  ami               = var.aws_ami
  instance_type     = var.aws_instance_type
  key_name          = var.aws_key_name
  tags = {
    Name = "JMeter Server"
  }
  user_data = templatefile("${path.module}/install_jmeter.sh", {
    JMETER_HOME                         = var.jmeter_home,
    JMETER_VERSION                      = var.jmeter_version,
    JMETER_DOWNLOAD_URL                 = "https://dlcdn.apache.org//jmeter/binaries/apache-jmeter-${var.jmeter_version}.tgz",
    JMETER_CMDRUNNER_VERSION            = var.jmeter_cmdrunner_version,
    JMETER_CMDRUNNER_DOWNLOAD_URL       = "http://search.maven.org/remotecontent?filepath=kg/apc/cmdrunner/${var.jmeter_cmdrunner_version}/cmdrunner-${var.jmeter_cmdrunner_version}.jar",
    JMETER_PLUGINS_MANAGER_VERSION      = var.jmeter_plugins_manager_version,
    JMETER_PLUGINS_MANAGER_DOWNLOAD_URL = "https://repo1.maven.org/maven2/kg/apc/jmeter-plugins-manager/${var.jmeter_plugins_manager_version}/jmeter-plugins-manager-${var.jmeter_plugins_manager_version}.jar",
    JMETER_PLUGINS                      = join(",", var.jmeter_plugins)
  })
}
