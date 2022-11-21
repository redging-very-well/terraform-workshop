resource "azurerm_resource_group" "default" {
  name     = "${var.environment}-rg"
  location = var.location
}
