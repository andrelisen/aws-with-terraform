data "aws_ami" "ubuntu"{
    owners = ["amazon"]
    most_recent = true
    name_regex = "ubuntu"
}

resource "aws_instance" "this" {

    for_each = {
        web = {
            name = "web server"
            type = "t3.medium"
        }
        ci_cd = {
            name = "CI/CD Server"
            type = "t3.micro"
        }
    }

    ami = data.aws_ami.ubuntu.id
    //each.x é a forma de acessar o foreach - o value retorna todo o conj
    instance_type = lookup(each.value, "type", null)

    tags = {
        Project = "Curso AWS Com Terraform"
        //each.key retorna web ou key
        Name = "${each.key}: ${lookup(each.value, "name", null)}"
    }
}