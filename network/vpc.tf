resource "aws_vpc" "iti-Vpc" {
  cidr_block = var.cider

  tags = {
    Name = var.name 
  }
}