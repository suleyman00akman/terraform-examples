resource "aws_instance" "main" {
  for_each      = toset(["dev", "test", "prod"])
  ami           = "ami-043a5a82b6cf98947"
  instance_type = var.is_production ? "t2.large" : "t2.micro"

  tags = {
    Name        = "${each.key}-instance"
    Environment = each.value
  }
}



