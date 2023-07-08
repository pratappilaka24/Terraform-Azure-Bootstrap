module "rgrp" {
  source   = "./modules/resourcegroup"
  rgname   = var.rgname
  location = var.location
  tags     = var.tags
}

module "stgacc" {
  source             = "./modules/storageaccount"
  storageaccountname = var.storageaccountname
  rgname             = module.rgrp.rg_name
  location           = var.location
  tags               = var.tags
}