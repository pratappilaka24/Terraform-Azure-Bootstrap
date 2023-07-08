# --------------
# Storage account
# --------------

resource "azurerm_storage_account" "stgac" {
  name                     = var.storageaccountname
  resource_group_name      = var.rgname
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = var.tags
}