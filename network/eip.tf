resource "aws_eip" "lb" {
    tags = {
    Name = "load_b"
  }

}