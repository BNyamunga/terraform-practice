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

resource "aws_instance" "ec2" {
    ami = "ami-0c02fb55956c7d316"
    instance_type = var.list[1]
}

variable "list" { 
    type = list
    default = ["m5.large" , "m5.xlarge", "t2.micro"]
}

variable "types" {
    type = map
    default = {
        us-east-1 = "t2.micro"
        us-west-2 = "t2.nano"
        us-south-1 = "t2.small"
    }
}