variable "ec2_name" {
  default = "my-EC2-instance"
}

variable "ec2_type" {
  default = "t2.micro"
}

variable "environment" {
  default = "dev"
}

variable "is_production" {
  default = true  
}