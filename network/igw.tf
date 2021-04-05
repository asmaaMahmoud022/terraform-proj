resource "aws_internet_gateway" "iti" {
  vpc_id = aws_vpc.iti-Vpc.id

  tags = {
    Name = "iti"
  }
}