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

    ami = data.aws_ami.ubuntu
}