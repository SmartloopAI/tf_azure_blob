locals {
  tags = {
    "Name" : var.resource_name
  }
}

resource "azurerm_storage_account" "static_storage" {
  name                     = "${var.resource_name}${var.storage_account_name}"
  resource_group_name      = data.azurerm_resource_group.this.name
  location                 = data.azurerm_resource_group.this.location
  account_kind             = "StorageV2"
  account_tier             = "Standard"
  account_replication_type = "GRS"
  enable_https_traffic_only = true

  static_website {
    index_document = "index.html"
  }

  tags = local.tags
}
