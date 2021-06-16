data "azurerm_resource_group" "this" {
  for_each = var.key_vaults
  name = each.value["resource_group"]
}