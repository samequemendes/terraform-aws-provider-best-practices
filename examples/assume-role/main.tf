provider "aws" {
  alias  = "secure"
  region = "us-east-1"
  profile = "default"
  assume_role {
    role_arn = "arn:aws:iam::123456789012:role/TerraformExecutionRole"
    session_name = "terraform"
  }
}

resource "aws_s3_bucket" "secure_bucket" {
  bucket = "secure-bucket"
  acl    = "private"
}