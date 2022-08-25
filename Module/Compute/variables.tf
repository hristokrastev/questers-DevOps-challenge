variable "location" {
  description = "Location"
  type        = string
  default     = "West Europe"
}

variable "resource_group_compute" {
  description = "Compute Resource Group"
  type        = string
  default     = "rg-dev-quest-Compute"
}

variable "plan_linux_name" {
  description = "App service plan name"
  type        = string
  default     = "plan-dev-quest-linux"
}

variable "os_type" {
  description = "App service plan os type"
  type        = string
  default     = "Linux"
}

variable "plan_sku" {
  description = "App service plan sku"
  type        = string
  default     = "B1"
}

variable "app_linux_name" {
  description = "Web App name"
  type        = string
  default     = "app-dev-quest-linux"
}

variable "app_settings" {
  type        = map(string)
  description = "The relavent App settings for the app"
  default = {
    "WEBSITE_RUN_FROM_PACKAGE" = 1
  }
}

variable "tags" {
  type = map(string)
  description = "Tagging based on the requirement strategy"
  default = {
    environment = "dev"
    owner = "Hristo Krastev"
  }
}