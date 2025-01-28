resource "aws_db_instance" "db" {
  engine            = var.db_engine
  instance_class    = var.db_instance_class
  allocated_storage = var.db_allocated_storage
  db_name           = var.db_name 
  username          = var.db_username
  password          = var.db_password
  skip_final_snapshot = true
}
