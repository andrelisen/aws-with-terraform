resource "aws_instance" "server" {
    /*Estamos definindo quantos AWS EC2 vamos criar*/
    /*Se o número de instâncias for menor e igual a 0, vamos setar como zero*/
    /*Ou se ele for maior, vamos setar o valor que vamos passar (local.instance_number)*/
    count = local.instance_number <= 0 ? 0 : local.instance_number

    ami = var.instance_ami
    instance_type = lookup(var.instance_type, var.env)

    tags = merge(
        local.common_tags,
        { 
            Project = "Curso AWS com Terraform"
            Env = format("%s", var.env)
            Name = format("Instance %d", count.index + 1)
        }
    )
}