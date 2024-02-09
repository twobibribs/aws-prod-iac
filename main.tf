terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "s3" {
  bucket = "terraform-experiments"
}

resource "aws_s3_bucket_public_access_block" "s3" {
  bucket = aws_s3_bucket.s3.id

  block_public_acls   = false
  block_public_policy = false
}