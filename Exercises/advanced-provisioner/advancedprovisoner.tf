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

resource "aws_security_group" "allow_port22" {
  name = "allow_port22"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

resource "aws_instance" "ec2-demo" {
  ami                    = "ami-0c02fb55956c7d316"
  instance_type          = "t2.micro"
  key_name               = "mykey"
  vpc_security_group_ids = [aws_security_group.allow_port22.id]

  provisioner "remote-exec" {
      on_failure = continue
    inline = [
      "sudo yum -y install nano"
    ]
  }

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("./mykey.pem")
    host        = self.public_ip

  }
}