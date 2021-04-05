resource "aws_security_group" "first_SG" {
  name        = "first_SG_name"
  description = "Allow inbound traffic"
  vpc_id      = module.iti.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "first_SG_tag"
  }
}


resource "aws_security_group" "second_SG" {
  name        = "second_SG_name"
  description = "Allow inbound traffic"
  vpc_id      = module.iti.vpc_id

  ingress {
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "second_SG_tag"
  }
}