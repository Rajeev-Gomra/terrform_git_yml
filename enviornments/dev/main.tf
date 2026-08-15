module "resource_group" {
  source = "../../modules/resource_group"
  rgs    = var.rgs
}

module "storage_account" {
  depends_on  = [module.resource_group]
  source      = "../../modules/storage_account"
  storage_acc = var.storage_acc
}

module "container" {
  depends_on = [module.storage_account]
  source     = "../../modules/container"
  container  = var.container
}

module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../../modules/virtual_network"
  vnet       = var.vnet
}

module "subnet" {
  depends_on = [module.resource_group, module.virtual_network]
  source     = "../../modules/subnet"
  snet       = var.snet

}

module "public_ip" {
  depends_on = [module.resource_group]
  source     = "../../modules/public_ip"
  pip        = var.pip
}

module "virtual_machine" {
  depends_on = [module.public_ip, module.subnet]
  source     = "../../modules/virtual_machine"
  vms        = var.vms
}
