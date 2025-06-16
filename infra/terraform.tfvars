rgs = {
  rg1 = {
    name     = "rg-dev"
    location = "East US"
  }
}

vnets = {
  vnet1 = {
    name     = "vnet-dev"
    cidr     = ["10.0.0.0/16"]
    location = "East US"
    rgname   = "rg-dev"
  }
}

subnets = {
  subnet1 = {
    name           = "subnet-front"
    address_prefix = ["10.0.1.0/24"]
    location       = "East US"
    vnetname       = "vnet-dev"
    rgname         = "rg-dev"
  }
  subnet2 = {
    name           = "subnet-back"
    address_prefix = ["10.0.2.0/24"]
    location       = "East US"
    vnetname       = "vnet-dev"
    rgname         = "rg-dev"
  }
}

pips = {
  pip1 = {
    publicipname = "pip-front"
    location     = "East US"
    rgname       = "rg-dev"
  }
  pip2 = {
    publicipname = "pip-back"
    location     = "East US"
    rgname       = "rg-dev"
  }
}

nics = {
  nic1 = {
    nicname      = "nic-front"
    location     = "East US"
    rgname       = "rg-dev"
    publicipname = "pip-front"
    subnetname   = "subnet-front"
    vnetname     = "vnet-dev"

  }
  nic2 = {
    nicname      = "nic-back"
    location     = "East US"
    rgname       = "rg-dev"
    publicipname = "pip-back"
    subnetname   = "subnet-back"
    vnetname     = "vnet-dev"


  }
}


