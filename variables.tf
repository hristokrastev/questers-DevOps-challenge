variable "location" {
  description = "Location"
  type        = string
  default     = "West Europe"
}

variable "resource_group_compute" {
  description = "Compute Resource Group"
  type        = string
}

variable "plan_sku" {
  description = "App service plan sku"
  type        = string
}