resource "aws_instance" "remotestate" {
  ami           = var.instance_ami
  instance_type = var.instance_type

  tags = {
    Name = "Remote State"
    Environment = "Validando"
  }
}

