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
