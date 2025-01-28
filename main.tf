provider "aws" {
  region = var.aws_region
}

module "ec2_instance" {
  source        = "modules_jan28/modules/ec2/main.tf"
  instance_name = "teraa_jan27"
}
