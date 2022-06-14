provider "aws" {
    region = "us-east-1"
    alias = "default"
    profile = "default"
}

provider "aws" {
    region = "us-east-1"
    alias = "user2"
    profile = "user2"
}  /* profile is acount nameadd credentials in the file in the .aws folder under C:/users/barba */