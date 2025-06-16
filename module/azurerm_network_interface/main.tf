resource "azurerm_network_interface" "network_interface" {
  for_each            = var.nicname
  name                = each.value.nicname
  location            = each.value.location
  resource_group_name = each.value.rgname
  
  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.datasubnet[each.key].id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = data.azurerm_public_ip.datapublicip[each.key].id
  }

}
