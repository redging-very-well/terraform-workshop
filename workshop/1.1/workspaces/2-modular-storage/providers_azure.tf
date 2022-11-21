provider "azurerm" {
  environment = "public"
  features    = {}
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.0"
    }
  }
}
