resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  tags   = { Name = "Bucket-Terraform-2025" }
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.bucket.id
  acl    = "private"
}