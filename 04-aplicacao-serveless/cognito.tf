resource "aws_cognito_user_pool" "this" {
  name = "todo"

  tags = {
    Name         = "Cognito APP To-do"
    CreatedAt    = "04062024"
    Provisionado = "Terraform"
  }
}

resource "aws_cognito_user_pool_client" "this" {
  name         = "todo"
  user_pool_id = aws_cognito_user_pool.this.id

  generate_secret                      = false
  allowed_oauth_flows                  = ["implicit"]
  allowed_oauth_flows_user_pool_client = true
  allowed_oauth_scopes                 = ["openid"]
  callback_urls                        = ["http://localhost:3000"]
  supported_identity_providers         = ["COGNITO"]
}

resource "aws_cognito_user_pool_domain" "this" {
  domain       = "andrelise"
  user_pool_id = aws_cognito_user_pool.this.id
}