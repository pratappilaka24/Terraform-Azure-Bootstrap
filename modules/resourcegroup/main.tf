# --------------
# Resource group
# --------------

resource "azurerm_resource_group" "resourcegroup" {
  name     = var.rgname
  location = var.location
  tags     = var.tags
}

output "rg_name" {
  value = azurerm_resource_group.resourcegroup.name
}