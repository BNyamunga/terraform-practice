resource "aws_eip" "res1" {
    vpc = "true"
    provider = aws.nvirginia
}

resource "aws_eip" "res2" {
    vpc = "true"
    provider  =aws.ohio
}