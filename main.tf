provider "azurerm" {
  features {}
}

module "londonscaleset" {
  source      = "./ScaleSet"
  location    = "uksouth"
  prefix      = "london"
  in          = "9"
  inmins      = "0"
  out         = "17"
  outmins     = "0"
  environment = "Production"
}

module "mumbaiscaleset" {
  source      = "./ScaleSet"
  location    = "eastasia"
  prefix      = "mumbai"
  in          = "2"
  inmins      = "30"
  out         = "10"
  outmins     = "30"
  environment = "Development"
}

module "parisscaleset" {
  source      = "./ScaleSet"
  location    = "francecentral"
  prefix      = "paris"
  in          = "10"
  inmins      = "0"
  out         = "15"
  outmins     = "0"
  environment = "Staging"
}