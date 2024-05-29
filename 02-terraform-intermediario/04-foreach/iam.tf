resource "aws_iam_user" "the-accounts" {
  for_each = toset(["Todd", "Alice", "James", "Dottie"])
  name     = each.key
}