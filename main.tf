provider "aws" {
  region = var.aws_region
}

module "ec2_instance" {
  source        = "modules_jan28/modules/ec2/main.tf"
  ami           = var.ami
  instance_type = var.instance_type
  instance_name = "teraa_jan27"
}
