terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.19.1"
    }
  }
}

# Create a resource group for the Networking resources
resource "azurerm_resource_group" "rg_networking" {
  name     = var.resource_group_networking
  location = var.location
}