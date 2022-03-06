# aws.tf
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-tf-test-bucket"
  acl    = "private"

  tags {
    Name        = "My bucket"
  }
}
