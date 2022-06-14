resource "aws_instance" "ec2" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = var.list[2]
}