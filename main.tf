

resource "aws_instance" "vm_a" {
    instance_type = "t2.micro"
    ami = "ami-066784287e358dad1"
    tags = {
      Name="production"
    }
}
#####
