provider "aws" {
  region = "us-east-1"
  
}

# terraform { 
#   cloud { 
    
#     organization = "my-terraform-cloud-organization" 

#     workspaces { 
#       name = "my-workspace" 
#     } 
#   } 
# }

resource "aws_instance" "vm_a" {
    instance_type = "t2.micro"
    ami = "ami-066784287e358dad1"
    tags = {
      Name="dev"
    }
}
output "vm_info" {
  value =aws_instance.vm_a.arn
}