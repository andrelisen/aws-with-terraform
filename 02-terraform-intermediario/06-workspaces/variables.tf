variable "aws_region" {
  type = map(string)
  default = {
    dev  = "us-east-1"
    prod = "us-east-2"
  }
}

variable "instance" {
  description = "Configuração das instancias para o workspace"
  type = map(object({
      ami    = string
      type   = string
      number = number
    }))
  
  default = {
    dev = {
      ami    = "ami-00beae93a2d981137"
      type   = "t2.micro"
      number = 1
    }
    prod = {
      ami    = "ami-0ca2e925753ca2fb4"
      type   = "t2.micro"
      number = 2
    }
  }
  
}
