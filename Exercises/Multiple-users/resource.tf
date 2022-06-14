resource "aws_eip" "res1" {
    vpc = "true"
    provider = aws.default
}

resource "aws_eip" "res2" {
    vpc = "true"
    provider  =aws.user2
}