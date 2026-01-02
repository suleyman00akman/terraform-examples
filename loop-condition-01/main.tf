resource "aws_instance" "main" {
  ami           = "ami-043a5a82b6cf98947"
  instance_type = var.is_production ? "t2.large" : "t2.micro"

  tags = {
    Name        = var.ec2_name
    Environment = var.is_production ? "Production" : "Development"
  }
}