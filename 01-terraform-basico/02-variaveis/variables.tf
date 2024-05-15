variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
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
}

variable "instance_type" {
  type        = string
  description = ""
  default     = "t3.micro"
}

variable "tags" {
  type        = map(string)
  description = ""
  default = {
    Name    = "Ubuntu"
    Project = "Curso AWS Com Terraform"
  }
}