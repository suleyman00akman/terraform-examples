resource "aws_instance" "main" {
  ami           = data.aws_ami.latest_ubuntu.id
  instance_type = "t2.micro"

  tags = {
    Name        = "${local.Name}-my-local-name" # not string içinde başka bir bloktan veri alma
    Environment = "${local.environment}"              # local bloğundaki environmetn değişkenini kullanmak için local.environment
    #Environment = local.environment        # local bloğundaki environmetn değişkenini kullanmak için local.environment
  }
}