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

/* resource "aws_iam_user" "user" {
    name = var.usernumber
    path = "/system/"
} */