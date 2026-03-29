resource "aws_s3_bucket" "s3bucket1" {
  bucket = var.bucket_name

  tags = {
    Environment = "test"
  }
}