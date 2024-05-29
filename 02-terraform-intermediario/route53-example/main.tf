module "route53" {
    source = "./module"

    zone = {
        name = "andrelise-tech.com"
        comment = "Gerenciado pelo module do Terraform"
        # delegation_set_id = ""
        # vpc = {
        #     id = ""
        #     region= ""
        # }
    }

    # records = [

    # ]

    tags = {
        environment = dev
    }
}