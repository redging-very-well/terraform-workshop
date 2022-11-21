terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.32.0"
    }
  }
  backend "local" {
    path = "../state/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
