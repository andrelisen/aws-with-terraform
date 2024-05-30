terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = " 5.49.0"
    }
  }

  backend "s3" {
    bucket = "tfstate-923514948444"
    key    = "dev/06-data-source/terraform.tfstate"
    region = "us-east-1"

    dynamodb_table = "tflock-tfstate-923514948444" //serve como tabela de lock do remotestate
  }
}

provider "aws" {
  region = "us-east-1"
}

locals{

    //se workspace for default, vamos setar a env como dev, senão pegar o código do workspace
    env = terraform.workspace == "default" ? "dev" : terraform.workspace
}

resource "aws_instance" "web"{

    //estou procurando na minha variavel instance com a chave local.env o numero de instancias 
    count = lookup(var.instance, local.env)["number"]

    ami  = lookup(var.instance, local.env)["ami"]
    instance_type  = lookup(var.instance, local.env)["type"]

    tags = {
        Name = "Minha máquina web ${local.env}",
        Env = local.env
    }

}