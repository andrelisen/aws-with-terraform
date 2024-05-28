terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = " 5.49.0"
    }
  }

  backend "s3" {
    bucket = "tfstate-923514948444"
    key = "dev/03-data-source/terraform.tfstate"
    region = "us-east-1"
    profile = "terraform-pessoal"
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}