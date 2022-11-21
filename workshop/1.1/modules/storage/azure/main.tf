resource "azurerm_storage_container" "this" {
  name                 = var.name
  storage_account_name = "cpworkshopsandboxsa"
}
