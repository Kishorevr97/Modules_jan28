provider "aws" {
  region = var.aws_region
}

module "ec2_instance" {
  source        = "./modules/ec2"
  ami           = var.ami
  instance_type = var.instance_type
  instance_name = "teraa_jan27"
}

module "rds_instance" {
  source              = "./modules/rds"
  db_engine           = var.db_engine
  db_instance_class   = var.db_instance_class
  db_allocated_storage = var.db_allocated_storage
  db_name             = var.db_name
  db_username         = var.db_username
  db_password         = var.db_password
}

module "s3_bucket" {
  source           = "./modules/s3"
  s3_bucket_name   = var.s3_bucket_name
  bucket_name_tag  = "jan27-bucket"
}
