resource "azurerm_servicebus_namespace" "main" {
  name                = "sandbox-servicebus-namespace"
  location            = azurerm_resource_group.default.location
  resource_group_name = azurerm_resource_group.default.name
  sku                 = "Standard"

  tags = {
    environment = var.environment
  }
}
