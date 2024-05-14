provider "aws" {
  region = "us-east-1"
  profile = "terraform-pessoal"
}

resource "aws_s3_bucket" "my-bucket-test" {
  bucket = "bucket-aws-com-terraform-14052024"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
