module "rgname" {
  source = "../module/azurerm_resource_group"
  rgname = var.rgs

}

module "vnetname" {
  depends_on = [module.rgname]
  source     = "../module/azurerm_virtual_network"
  vnetname       = var.vnets
}

module "subnetname" {
  depends_on = [module.vnetname]
  source     = "../module/azurerm_subnet"
  subnetname    = var.subnets

}

module "publicip" {
  depends_on = [module.rgname]
  source     = "../module/azurerm_public_ip"
  publicip   = var.pips

}

module "nic" {
  depends_on   = [module.subnetname, module.publicip]
  source       = "../module/azurerm_network_interface"
  nicname      = var.nics
}
