resource "aws_instance" "main" {
  ami           = "ami-043a5a82b6cf98947" # mevcut regioan da geçerli bir ami_id girilmeli
  instance_type = "t2.micro"

  tags = {
    Name        = "Devops-Bootcamp-Terraform"
    Environment = "test"
  }
}