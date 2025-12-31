resource "aws_s3_bucket" "my_bucket" {
  bucket = "sakman-my-unique-terraform-bucket-123456"

  tags = {
    Name        = "MyTerraformBucket"
    Environment = "Dev"
  }

}