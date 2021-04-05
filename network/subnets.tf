resource "aws_subnet" "public1" {
  vpc_id     = aws_vpc.iti-Vpc.id
  cidr_block = var.public1_subnet_cider
  map_public_ip_on_launch = true
  availability_zone=var.AZ_a
  tags = {
    Name = "public1"
  }
}

resource "aws_subnet" "public2" {
  vpc_id     = aws_vpc.iti-Vpc.id
  cidr_block = var.public2_subnet_cider
  map_public_ip_on_launch = true
  availability_zone=var.AZ_b
  tags = {
    Name = "public2"
  }
}

resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.iti-Vpc.id
  cidr_block = var.private1_subnet_cider
  availability_zone=var.AZ_a
  tags = {
    Name = "private1"
  }
}

resource "aws_subnet" "private2" {
  vpc_id     = aws_vpc.iti-Vpc.id
  cidr_block = var.private2_subnet_cider
  availability_zone=var.AZ_b
  tags = {
    Name = "private2"
  }
}