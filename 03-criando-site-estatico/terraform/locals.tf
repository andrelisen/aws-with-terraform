locals {
  has_domain = var.domain != ""
  domain = local.has_domain ? var.domain : random_pet.website.id

  common_tags ={
    Project = "Curso AWS com Terraform"
    Service = "Website Estático"
    CreatedAt = "31052024"
  }

}
