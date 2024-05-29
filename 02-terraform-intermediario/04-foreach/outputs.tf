output "extensions" {
  value = local.file_extensions
}

output "extensions_upper" {
  value = local.file_extensions_upper
}

output "instance_arns" { //retorna uma lista
  value = [for k, v in aws_instance.this : v.arn]
}

output "instance_names" { //retorna um map
  value = { for k, v in aws_instance.this : k => v.tags.Name }
}

output "private_ips" {
  value = [for conjunto in local.ips : conjunto.private]
}

output "public_ips" {
  value = local.ips[*].public
}
