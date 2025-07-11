terraform {
    required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = "~> 3.0"
        }
    }
    
    required_version = ">= 0.12"
}
provider "aws" {
    region = "us-west-2"
}
resource "aws_s3_bucket" "my_bucket" {
    bucket = "my-unique-bucket-name-123456"
    acl    = "private"

    tags = {
        Name        = "MyBucket"
        Environment = "Dev"
    }
}