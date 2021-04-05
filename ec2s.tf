
resource "aws_instance" "bastion-instance" {
  ami           = var.ec2_ami
  instance_type = "t2.micro"

  vpc_security_group_ids = [aws_security_group.first_SG.id]
  subnet_id              = module.iti.public1_id
  key_name               = aws_key_pair.key-deploy.key_name
  tags = {
    Name = "bastion"
  }

  provisioner "local-exec" {
    command = "echo The servers IP address is ${self.public_ip}"
  }
}


resource "aws_instance" "application-instance" {
  ami           = var.ec2_ami
  instance_type = "t2.micro"

  vpc_security_group_ids = [aws_security_group.second_SG.id]
  subnet_id              = module.iti.private1_id
  key_name               = aws_key_pair.key-deploy.key_name
   tags = {
    Name = "application"
  }
}


