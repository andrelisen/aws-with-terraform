locals {
  //se a var.filename é diferente de null, pegar o valor da var. senão gerar randomico
  filename = var.filename != null ? var.filename : random_string.default_filename.id
  content  = var.content != null ? var.content : data.http.default_content.body
  //o path.root referencia aonde eu fiz o terraform apply
  path = var.path != null ? var.path : path.root
}

resource "random_string" "default_filename" {
  length  = 8
  special = false
  upper   = false
  number  = false
}

data "http" "default_content" {
  url = "https://olamundo.com"

  request_headers = {
    Accept = "application/json"
  }
}

resource "local_file" "this" {
  filename = "${local.path}/${local.filename}"
  content  = local.content
}