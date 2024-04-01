variable "subscription_id" {
  description = "Subscription ID"
}

variable "resource_name" {
  description = "Name of the resouce"
}

variable "storage_account_name" {
  description = "Name of the storage account"
}

variable "location" {
  default     = "eastus"
  description = "Location of the resource group."
}
