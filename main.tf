terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.19.1"
    }
  }
}

provider "azurerm" {
  features {}
}

# Calling the General module
module "general" {
  source = "./Module/General"
}

# Calling the Networking module
module "networking" {
  source = "./Module/Networking"
  depends_on = [
    module.general
  ]
}

# Calling the Data module
module "data" {
  source = "./Module/Data"
}

# Calling the Compute module
module "compute" {
  source   = "./Module/Compute"
  plan_sku = var.plan_sku
  depends_on = [
    module.data,
    module.networking
  ]
}




