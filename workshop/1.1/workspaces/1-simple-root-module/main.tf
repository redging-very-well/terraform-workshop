resource "random_password" "password" {
  length = var.password_length
}
