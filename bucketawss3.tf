#AWS em US-East-Ohio
provider "aws" {
access_key = "XXXXXXXXXXXX"
secret_key = "XXXXXXXXXXXXXXXXXXXXXX"
region = "us-east-1"
}
resource "aws_s3_bucket" "b" {
  bucket = "XXXXXXXXXXXXXXXXXXXX"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}

