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
    common_tags = { 
        Owner = "Team 1"
        service = "engineering"
    }
}

resource "aws_instance" "ec2" {
    ami = "ami-0c02fb55956c7d316"
    instance_type = "t2.micro"
    tags = local.common_tags
}

resource "aws_ebs_volume" "ebs" {
    availability_zone = "us-east-1a"
    size = 10
    tags = local.common_tags
}