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
}

# Coletar o account id
data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "remote-state" {
  bucket = "tfstate-${data.aws_caller_identity.current.account_id}"

  versioning{
    enabled = true
  }

  tags = {
    Description = "Store terraform remote state files"
    ManagedBy = "Terraform"
    Owner = "Andrelise"
    CreatedAt = "23052024"
  }

}


output "remote_state_bucket"{
    value = aws_s3_bucket.remote-state.bucket
}

output "remote_state_bucket_arn"{
    value = aws_s3_bucket.remote-state.arn
}