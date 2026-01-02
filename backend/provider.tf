terraform {
  backend "s3" {
    bucket       = "sakman-tfstate-0123" # Remote Backen için oluştruduğunuz S3 bucket ismini giriniz.
    key          = "environment/prod/terraform.tfstate"
    encrypt      = true # State dosyasını şifrele
    use_lockfile = true
    region       = "us-east-1"
    # profile      = "default" # çalışmalarınız için aws den başka bir provider kullanıyorsanız, aws yi sadece backend için kullanıyorsanız profil ismi aktif hale getirilmeli
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.27.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region  = "us-east-1"
  profile = "default"
}