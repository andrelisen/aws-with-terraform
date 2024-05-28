variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "env" {
}

variable "aws_profile" {
  type        = string
  description = ""
  default     = "terraform-pessoal"
}

variable "instance_ami" {
  type        = string
  description = ""
  default     = "ami-0bb84b8ffd87024d8"

    validation {
        condition = length(var.instance_ami) > 4 && substr(var.instance_ami, 0, 4) == "ami-"

        error_message = "The instance_ami value must be a valid AMI id, starting with \"ami-\"."
    }
}

variable "instance_number" {
    type = object({
        dev = number
        prod = number
    })

    description = "Number os instances to create"

    default = {
      dev = 1
      prod = 3
    }
}

variable "instance_type" {
    type = object({
        dev = string
        prod = string
    })

    description = ""

    default = {
      dev = "t3.micro"
      prod = "t3.medium"
    }
}