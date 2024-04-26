provider "aws" {
region = "us-east-1"

}

resource "aws_instance" "web" {
    ami = "ami-04e5276ebb8451442"
    instance_type = "t3.micro"
  
}
terraform {
  backend "remote" {
    organization = "my-organization-rich"
    workspaces {
      name = "terraform-cloud"
    }
  }
}
#3333wwqqwwwwsssss