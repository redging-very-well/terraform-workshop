resource "azurerm_servicebus_topic" "main" {
  name         = "${var.pubsub_name}-topic"
  namespace_id = "/subscriptions/${subscriptionId}/resourceGroups/sandbox-rg/providers/Microsoft.ServiceBus/namespaces/sandbox-servicebus-namespace"

  enable_partitioning = true
}
