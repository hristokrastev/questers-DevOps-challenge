variable "location" {
  description = "Location"
  type        = string
  default     = "West Europe"
}

variable "resource_group_data" {
  description = "Data Resource Group"
  type        = string
  default     = "rg-dev-quest-Data"
}

variable "account_tier" {
  description = "Storage Account Tier"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Storage Account Replication type"
  type        = string
  default     = "RAGRS"
}

variable "storage_account_name" {
  description = "Storage Account name which needs to be only lowercase letters"
  type        = string
  default     = "stdevquestaccount"
}

variable "blob_container_name" {
  description = "Storage Account name which needs to be only lowercase letters"
  type        = string
  default     = "app-backup"
}

variable "sas_url_start" {
  description = "Storage Account name which needs to be only lowercase letters"
  type        = string
  default     = "2022-03-21"
}

variable "sas_url_expiry" {
  description = "Storage Account name which needs to be only lowercase letters"
  type        = string
  default     = "2028-03-21"
}

variable "tags" {
  type = map(string)
  description = "Tagging based on the requirement strategy"
  default = {
    environment = "dev"
    owner = "Hristo Krastev"
  }
}