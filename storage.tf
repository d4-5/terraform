resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name

  tags = {
    Project = var.project_id
  }
}

resource "aws_s3_bucket_public_access_block" "private" {
  bucket = aws_s3_bucket.bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
