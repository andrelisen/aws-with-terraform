locals {
  arquivos = { #key:value
    "primeiro_arquivo.txt" : "Este é o conteúdo do primeiro arquivo.",
    "segundo_arquivo.txt" : "Este é o conteúdo do segundo arquivo."
  }
}

module "arquivos" {
  source = "../files"

  //estou executando esse modulo várias vezes
  //vou chamar 2x porque meu mapa arquivos tem dois valores
  for_each = local.arquivos

  path = "./"
  filename = each.key
  content = each.value
}