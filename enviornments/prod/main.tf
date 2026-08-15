module "rg" {
  source = "../../modules/resource_group"
  rgs    = var.rgs
}

module "public_ip" {
  depends_on = [module.rg]
  source     = "../../modules/public_ip"
  pip        = var.pip
}

module "vnet" {
  depends_on = [module.rg]
  source     = "../../modules/virtual_network"
  vnet       = var.vnet
}

module "subnet" {
  depends_on = [module.rg, module.vnet]
  source     = "../../modules/subnet"
  snet       = var.snet
}

module "vm" {
  depends_on = [module.subnet, module.public_ip]
  source     = "../../modules/virtual_machine"
  vms        = var.vms
}