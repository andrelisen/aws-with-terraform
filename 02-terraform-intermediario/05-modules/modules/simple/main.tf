module "msg" {
  source  = "../echo"
  message = "Repita essa mensagem =)"
}

output "echo" {
  value = module.msg.echo
}