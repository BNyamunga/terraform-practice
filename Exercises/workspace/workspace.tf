provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "ec2" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = lookup(var.my-var, terraform.workspace)
}

variable "my-var" {
  type = map(string)
  default = {
    default    = "t2.small"
    dev        = "t2.nano"
    staging    = "t2.small"
    production = "t2.micro"
  }
}