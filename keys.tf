resource "tls_private_key" "key1" {
  algorithm   = "RSA"
  rsa_bits    = 4096
}


resource "aws_key_pair" "key-deploy" {
  key_name   = "deployer-key"
  public_key = tls_private_key.key1.public_key_openssh
  
  }

  resource "local_file" "key" {
    content  = "${tls_private_key.key1.private_key_pem}"
    filename = var.key_name 

}