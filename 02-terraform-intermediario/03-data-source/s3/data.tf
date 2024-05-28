/*Acessando os dados de um remote-state*/
data "terraform_remote_state" "server" {
  backend = "s3"
  config = {
    bucket  = "tfstate-923514948444"
    key     = "dev/03-data-source/terraform.tfstate"
    region  = "us-east-1"
    profile = "terraform-pessoal"
  }
}