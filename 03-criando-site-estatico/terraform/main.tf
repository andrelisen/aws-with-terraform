terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.49.0"
    }
  }

  backend "s3"{}

}

provider "aws" {
  region = "us-east-1"
  # profile = var.aws_profile
}

resource "random_pet" "website"{
  length = 5
}