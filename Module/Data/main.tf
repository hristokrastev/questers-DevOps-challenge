terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.19.1"
    }
  }
}

# Create a resource group for the Data resources
resource "azurerm_resource_group" "rg_data" {
  name     = var.resource_group_data
  location = var.location
}

resource "azurerm_storage_account" "st_data" {
  name                      = var.storage_account_name
  resource_group_name       = azurerm_resource_group.rg_data.name
  location                  = azurerm_resource_group.rg_data.location
  account_tier              = var.account_tier
  account_replication_type  = var.account_replication_type
  enable_https_traffic_only = true
  tags                      = var.tags
}

resource "azurerm_storage_container" "blob_container" {
  name                  = var.blob_container_name
  storage_account_name  = azurerm_storage_account.st_data.name
  container_access_type = "private"
}

data "azurerm_storage_account_blob_container_sas" "sas_url" {
  connection_string = azurerm_storage_account.st_data.primary_connection_string
  container_name    = azurerm_storage_container.blob_container.name
  https_only        = true

  start  = var.sas_url_start
  expiry = var.sas_url_expiry

  permissions {
    read   = true
    add    = true
    create = true
    write  = true
    delete = true
    list   = true
  }

  cache_control       = "max-age=5"
  content_disposition = "inline"
  content_encoding    = "deflate"
  content_language    = "en-US"
  content_type        = "application/json"
}