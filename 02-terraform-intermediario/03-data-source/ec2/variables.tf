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

variable "instance_type" {
    type = string
    description = ""
    default = "t3.micro"
}