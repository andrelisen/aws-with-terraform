/*Criando um arquivo de template*/
data "template_file" "json"{
    template = file("template.json.tpl")

    vars = {
        age = 24
        eye = "green"
        name = "Andrelise"
        gender = "Female"
    }
}

/*Pega o arquivo que vc passar pra ele e converte para o tipo desejado*/
data "archive_file" "json"{
    type = local.file_ext
    output_path = "${path.module}/files/${local.object_name}.${local.file_ext}"

    source {
        content = data.template_file.json.rendered
        filename = "${local.object_name}.json"
    }
}