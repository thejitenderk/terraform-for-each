data "azurerm_public_ip" "datapublicip" {
  for_each            = var.nicname
  name                = each.value.publicipname
  resource_group_name = each.value.rgname

}


data "azurerm_subnet" "datasubnet" {
  for_each             = var.nicname
  name                 = each.value.subnetname
  resource_group_name  = each.value.rgname
  virtual_network_name = each.value.vnetname

}
