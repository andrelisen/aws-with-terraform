resource "aws_dynamodb_table" "this" {
  hash_key       = "TodoId"
  name           = "todo"
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5
  attribute {
    name = "TodoId"
    type = "S"
  }

  tags = {
    Name         = "DynamoDB Todo"
    CreatedAt    = "04062024"
    Provisionado = "Terraform"
  }

}