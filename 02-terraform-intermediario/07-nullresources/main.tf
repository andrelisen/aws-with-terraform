terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = " 5.49.0"
    }
  }
}

resource "null_resource" "null" {

    triggers = {
        timestamp = timestamp()
    }

    provisioner "local-exec"{
        command = "echo $A $B $C = $TIME >> env_var.txt"

        environment = {
            A = "Andrelise"
            B = 3
            C = "true"
            TIME = timestamp()
        }
    }
}