#########################
# ROUTE53 ZONE
#########################

resource "aws_route53_zone" "name" {
    name = var.zone.name
    comment = var.zone.comment
    delegation_set_id = var.zone.delegation_set_id

    vpc {
      vpc_id = var.zone.vpc.id
      vpc_region = var.zone.vpc.region
    }

    tags = {

    }
}