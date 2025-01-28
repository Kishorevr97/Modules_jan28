provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "terra" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "teraa_jan27"
  }
}
