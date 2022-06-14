provider "aws" {
  region     = "us-east-1"
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = "ami-0c02fb55956c7d316"
  instance_type          = "t2.micro"
  key_name               = "mykey"
  monitoring             = true
  vpc_security_group_ids = ["sg-0af51d79a37f835ce"]
  subnet_id              = "subnet-0840097e1c62af533"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}