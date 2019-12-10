resource "aws_vpc" "example" {
    cidr_block = "192.168.0.0/16"
    instance_tenancy = "default"
 tags = {
    Name = "VPC-Reto"
  }
}

