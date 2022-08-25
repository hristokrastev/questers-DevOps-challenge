terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.19.1"
    }
  }
}

# Create a resource group for the Data resources
resource "azurerm_resource_group" "rg_general" {
  name     = var.resource_group_general
  location = var.location
}