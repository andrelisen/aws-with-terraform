/*Pegando dados da imagem diretamente da AWS - pegando a mais recente*/
data "aws_ami" "ubuntu" {
    owners = ["amazon"]
    most_recent = true
    name_regex = "ubuntu"
}