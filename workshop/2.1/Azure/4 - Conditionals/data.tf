data "azurerm_servicebus_namespace" "main" {
  name                = "sandbox-servicebus-namespace"
  resource_group_name = "sandbox-rg"
}