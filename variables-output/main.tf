resource "aws_instance" "main" {
  ami           = data.aws_ami.latest_ubuntu.id
  instance_type = var.ec2_type

  tags = {
    Name        = var.ec2_name
    Environment = var.environment
  }
}