# 1. Generate the RSA key pair securely in Terraform
resource "tls_private_key" "pk" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# 2. Save the Private Key to the local file system
resource "local_file" "ssh_key" {
  filename        = "~/Downloads/datacenter-kp.pem"
  content         = tls_private_key.pk.private_key_pem
  file_permission = "0400" # Sets secure permissions for the private key
}

# 3. Create the Key Pair in AWS using the generated public key
resource "aws_key_pair" "kp" {
  key_name   = "datacenter-kp"
  public_key = tls_private_key.pk.public_key_openssh
}