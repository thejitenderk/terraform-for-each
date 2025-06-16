resource "azurerm_public_ip" "publicip" {
  for_each            = var.publicip
  name                = each.value.publicipname
  location            = each.value.location
  resource_group_name = each.value.rgname
  allocation_method   = "Dynamic"
  sku                 = "Basic"

}
