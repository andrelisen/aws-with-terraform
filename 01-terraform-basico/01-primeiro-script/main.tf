provider "aws" {
  region  = "us-east-1"
  profile = "terraform-pessoal"
}

resource "aws_s3_bucket" "my-bucket-test" {
  bucket = "bucket-aws-com-terraform-15052024"

  tags = {
    Nome              = "Bucket AWS Com Terraform"
    CriadoPor         = "Andrelise"
    UltimaAtualizacao = "2024-05-15"
  }
}
