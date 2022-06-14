provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myec2" {
  ami                    = "ami-0f9fc25dd2506cf6d"
  key_name               = "mykey"
  vpc_security_group_ids = ["sg-04861ad5817fa6710"]
  subnet_id              = "subnet-0a3d78a3f9e4aa792"
  instance_type          = "t2.micro"
  tags = {
    Name = "FirstMachine"
  }

}