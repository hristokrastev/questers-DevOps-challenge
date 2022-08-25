terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.19.1"
    }
  }
}



# Create a resource group for the Compute resources
resource "azurerm_resource_group" "rg_compute" {
  name     = var.resource_group_compute
  location = var.location
  tags     = var.tags
}


# Create an app service plan for the Web App
resource "azurerm_service_plan" "plan_linux" {
  name                = var.plan_linux_name
  resource_group_name = azurerm_resource_group.rg_compute.name
  location            = azurerm_resource_group.rg_compute.location
  os_type             = var.os_type
  sku_name            = var.plan_sku
  tags                = var.tags
}

# Create a Web App for the app
resource "azurerm_linux_web_app" "app_linux" {
  name                = var.app_linux_name
  resource_group_name = azurerm_resource_group.rg_compute.name
  location            = azurerm_service_plan.plan_linux.location
  service_plan_id     = azurerm_service_plan.plan_linux.id

  site_config {
    ftps_state = "Disabled"

  }
  zip_deploy_file = "C:\\CV\\Questers\\Quest_app.zip"
  https_only      = true
  app_settings    = var.app_settings
  tags = var.tags
}
