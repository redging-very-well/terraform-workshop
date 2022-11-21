resource "azurerm_servicebus_topic" "main" {
  name         = "${var.pubsub_name}-topic"
  namespace_id = data.azurerm_servicebus_namespace.main.id

  enable_partitioning = true
}
