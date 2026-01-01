resource "aws_instance" "main" {
  ami           = data.aws_ami.latest_ubuntu.id
  instance_type = var.ec2_type

  tags = {
    Name        = var.ec2_name
    Environment = var.environment
  }
}

resource "aws_instance" "import" {
  ami           = "ami-068c0051b15cdb816"
  instance_type = "t3.micro"

  tags = {
    Name        = "deneme"
  
  }
}