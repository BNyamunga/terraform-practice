terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.8.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
}

resource "aws_iam_user" "res1" {
    name = "iamuser.${count.index}"
    count = 2
    path = "/sytem/"
}

output "arns" {
    value = aws_iam_user.res1[*].arn
}

output "names" {
    value = aws_iam_user.res1[*].name
}