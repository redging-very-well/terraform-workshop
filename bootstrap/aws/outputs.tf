output "workshop_user_key" {
  value = {
    id     = aws_iam_access_key.workshop.id
    secret = aws_iam_access_key.workshop.secret
  }
  sensitive = true
}
