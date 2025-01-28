resource "aws_s3_bucket" "static" {
  bucket        = var.s3_bucket_name
 
  tags = {
    Name = "jan27-bucket"
  }
}

resource "aws_s3_bucket_versioning" "static_versioning" {
  bucket = aws_s3_bucket.static.id
  versioning_configuration {
    status = "Enabled"
  }
}
