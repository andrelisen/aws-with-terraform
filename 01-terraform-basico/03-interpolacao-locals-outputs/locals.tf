locals {
  ip_filepath = "ips.json"
  common_tags = {
    Service     = "Curso AWS Com Terraform"
    ManagedBy   = "Terraform"
    Environment = var.environment
    Owner       = "Andrelise"
  }
}