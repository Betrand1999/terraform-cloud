provider "aws" {
  region = "us-east-1"
  
}

resource "aws_instance" "vm_a" {
    instance_type = "t2.micro"
    ami = "ami-066784287e358dad1"
count= 2
    tags = {
      Name="production"
    }
}
###########
