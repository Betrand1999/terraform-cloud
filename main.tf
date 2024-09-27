provider "aws" {
  region = "us-east-2"

}


resource "aws_instance" "vm_a" {
  instance_type = "t2.micro"
  ami           = "ami-037774efca2da0726"
  tags = {
    Name = "Prod"
  }
}
output "vm_info" {
  value = aws_instance.vm_a.arn
}
#####
