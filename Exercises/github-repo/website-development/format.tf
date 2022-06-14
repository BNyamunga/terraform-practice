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
  access_key = "ASIASNVZWAVRKP3DUQ66"
  secret_key = "d3WGyN/aiPJtc+yGCEex3Up3loAh4TXzRh/yVXpN"
  token      = "FwoGZXIvYXdzEDsaDGi1UYPMOA/Il+HZMCK4AXDj47OURxhlL3rTag8U8hM6InU79+3UxLUj4ZErgU0ifwN0MYzWYvHqXeSXeg/EMELngF/jqKOLvr/1GrPedPL5WxodY7F3mMD7Rqp0MREtV5V2JPOkO7iQx35R8QbJjMMVvmuc6ZJtOsW9U5oVftKvzUGdzBUd+i9RtJgcKsReEkvmILjc9FglhKXeRoTNKBKakEwO35KQLnRZuZRJmc/KZ/CRB5doa11rXZKogjz83Dw9SKtp8tkos9T0kgYyLRMkvne5oOtJCv1WesZQ1tLCcra93EMBzhJ5gTFRwr5EiBt5EuiSzoKz8LkAoQ=="
}

resource "aws_instance" "ec2" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
}