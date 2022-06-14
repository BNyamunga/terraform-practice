terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.8.0"
    }
  }
}

provider "aws" {
    region  = "us-east-1"
    
}


resource "aws_eip" "mylb" {
  vpc = true
}

output "mylb" {
    value = aws_eip.mylb.public_ip
}

resource "aws_s3_bucket" "mys3" {
    bucket = "bucket-s3-attributes"
}

output "mys3bucket" {
    value = aws_s3_bucket.mys3.bucket_domain_name
}