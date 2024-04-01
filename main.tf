locals {
  tags = {
    "Name" : var.resource_name
  }
}

resource "random_integer" "num" {
  min = 1
  max = 50000
  keepers = {
    # Generate a new integer each time we switch to a new listener ARN
    listener_arn = var.storage_account_name
  }
}

resource "azurerm_storage_account" "static_storage" {
  name                      = "${var.storage_account_name}${random_integer.num.result}"
  resource_group_name       = data.azurerm_resource_group.this.name
  location                  = data.azurerm_resource_group.this.location
  account_kind              = "StorageV2"
  account_tier              = "Standard"
  account_replication_type  = "GRS"
  enable_https_traffic_only = true

  static_website {
    index_document = "index.html"
  }

  tags = local.tags
}
