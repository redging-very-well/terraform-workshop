resource "azurerm_storage_account" "default" {
  name                     = "cpworkshop${var.environment}sa"
  location                 = azurerm_resource_group.default.location
  resource_group_name      = azurerm_resource_group.default.name
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = var.environment
  }
}
