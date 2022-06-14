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

locals {
    time = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
}

variable "ami" {
    type = map
    default = {
        "us-east-1"="ami-0c02fb55956c7d316"
        "us-west-2"="ami-0b36cd6786bcfe120"
        "ap-south-1"="ami-03ededff12e34e59e"
    }
}

variable "region" {
    default = "us-east-1"
}

resource "aws_instance" "ec2" {
    ami = lookup(var.ami, var.region)
    instance_type = "t2.micro"
}

output "timestamp" {
    value = local.time
}