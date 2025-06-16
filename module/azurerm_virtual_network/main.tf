resource "azurerm_virtual_network" "vnet" {
  for_each            = var.vnetname
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.rgname
  address_space       = each.value.cidr

}
