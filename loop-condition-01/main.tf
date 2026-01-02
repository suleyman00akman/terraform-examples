resource "aws_instance" "main" {
  count         = var.is_production ? 3 : 1
  ami           = "ami-043a5a82b6cf98947"
  instance_type = var.is_production ? "t2.large" : "t2.micro"

  tags = {
    Name        = "${var.ec2_name}-${count.index + 1}"
    Environment = var.is_production ? "Production" : "Development"
  }
}