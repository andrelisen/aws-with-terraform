terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = " 5.49.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "terraform-pessoal"
}

data "aws_caller_identity" "current"{}

resource "aws_s3_bucket" "remote-state" {
  bucket = "tfstate-${data.aws_caller_identity.current.account_id}"

  tags = {
    Description = "Bucket S3 for TFSTATE"
    ManagedBy = "Terraform"
  }
}

output "remote_state_bucket"{
    value = aws_s3_bucket.remote-state.bucket
}

output "remote_state_bucket_arn" {
    value = aws_s3_bucket.remote-state.arn
}