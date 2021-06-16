provider "azurerm" {
  features {}
}

resource "azurerm_key_vault" "this" {
  for_each = var.key_vaults

  location            = data.azurerm_resource_group.this.location
  name                = each.value["name"]
  resource_group_name = data.azurerm_resource_group.this.name
  sku_name            = each.value["sku"]
  tenant_id           = each.value["tenant.id"]
}