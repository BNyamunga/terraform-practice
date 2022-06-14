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

variable "flag" {
    
}

resource "aws_instance" "env1" {
    ami = "ami-0c02fb55956c7d316"
    instance_type = "t2.micro"
    count = var.flag == true ? 2 : 0
}

resource "aws_instance" "env2" {
    ami = "ami-0c02fb55956c7d316"
    instance_type = "t2.nano"
    count = var.flag == false ? 1 : 0
}
