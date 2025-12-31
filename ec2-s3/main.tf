resource "aws_instance" "main" {
  ami           = "ami-068c0051b15cdb816" # Amazon Linux 2 AMI
  instance_type = "t3.micro"
  tags = {
    Name        = "Terraform-Example"
    environment = "Dev"
  }
}