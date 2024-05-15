terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = " 5.49.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}