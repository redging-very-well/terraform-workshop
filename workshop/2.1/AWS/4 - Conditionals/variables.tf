variable "pubsub_name" {
  type    = string
  default = "max-powers"
}

variable "env_name" {
  type = string
}

variable "message_ttl" {
  type = number
}

variable "create_ci_topic" {
  type    = bool
  default = false
}
