resource "azurerm_servicebus_topic" "main" {
  name         = "${var.env_name}-${var.pubsub_name}-topic"
  namespace_id = data.azurerm_servicebus_namespace.main.id

  enable_partitioning = true
  default_message_ttl = var.message_ttl
}
