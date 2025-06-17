terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.73.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "vm_4" {
  ami           = "ami-012967cc5a8c9f891"
  instance_type = "t3.micro"

}

terraform { 
  cloud { 
    
    organization = "my-organization-a" 

    workspaces { 
      name = "my-workspace" 
    } 
  } 
}