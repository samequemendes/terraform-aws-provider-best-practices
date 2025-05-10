provider "aws" {
  region = "us-east-1"
  profile = "default"
}

resource "aws_s3_bucket" "example" {
  bucket = "example-bucket"
  acl    = "private"
}