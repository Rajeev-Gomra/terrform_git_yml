rgs = {
  rg-dev = {
    name     = "rg-dev-rg-rg"
    location = "eastus"
  }
}

storage_acc = {
  st-dev = {
    name             = "strggtfstttate333"
    location         = "eastus"
    rg_name          = "rg-dev-rg-rg"
    replicaiton_type = "LRS"
    acc_tier         = "Standard"
  }
}

container = {
  dev-cont = {
    name = "dev-container"

    access_type = "private"
  }
}

vnet = {
  vnet-dev = {
    name          = "vnet-dev"
    location      = "eastus"
    rg_name       = "rg-dev-rg-rg"
    address_space = ["10.0.0.0/16"]
  }
}

snet = {
  snet-dev = {
    name             = "snet-dev"
    vnet_name        = "vnet-dev"
    rg_name          = "rg-dev-rg-rg"
    address_prefixes = ["10.0.1.0/24"]

  }
}

pip = {
  pip-dev = {
    name              = "pip-dev"
    location          = "eastus"
    rg_name           = "rg-dev-rg-rg"
    allocation_method = "Static"
  }
}

vms = {
  vm-dev = {
    nic_name  = "nic-dev"
    location  = "eastus"
    rg_name   = "rg-dev-rg-rg"
    snet_name = "snet-dev"
    vnet_name = "vnet-dev"
    pip_name  = "pip-dev"
    vm_name   = "dev-vm"

  }
}



