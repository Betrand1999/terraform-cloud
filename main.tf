provider "aws" {
    region = "us-east-1"
}
resource "aws_instance" "vma" {
    ami = "ami-0ae8f15ae66fe8cda"
    instance_type = "t2.micro"
}
######