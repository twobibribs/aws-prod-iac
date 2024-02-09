provider "aws" {
    region = "us-east-1"
}

module "s3" {
    #bucket name should be unique
    bucket_name = "testbucket"       
}