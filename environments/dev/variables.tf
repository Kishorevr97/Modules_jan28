variable "aws_region" {

       description = "region where we create resource"
 }

variable "ami" {
        description = "ami of the server"

}

variable "instance_type" {
        description = "instance type of the server"

validation {
       condition = contains(["t2.micro", "t3.micro"], var.instance_type)
       error_message = "instance type must be either 't2.micro' or 't3.micro'."

      }

}

variable "db_engine" {
        description = "db engine"

}

variable "db_instance_class" {
        description = "db instance class"

}

variable "db_allocated_storage" {
        description = "db storage"

}

variable "db_name" {
        description = "db name"

}

variable "db_username" {
        description = "db username"

}

variable "db_password" {
        description = "db password"

}

variable "s3_bucket_name" {
        description = "this is a bucket"

}
