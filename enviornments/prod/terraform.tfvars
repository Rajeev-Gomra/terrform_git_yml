rgs = {
  rgs = {
    name     = "rg-mdata"
    location = "japaneast"
  }
}

pip = {
  pip = {
    name              = "pip"
    location          = "japaneast"
    rg_name           = "rg-mdata"
    allocation_method = "Static"
  }
}

snet = {
  snet = {
    name                 = "snet"
    rg_name              = "rg-mdata"
    vnet_name = "vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
}

vnet = {
  vnet = {
    name          = "vnet"
    location      = "japaneast"
    rg_name       = "rg-mdata"
    address_space = ["10.0.0.0/16"]
  }
}

vms = {
  vms = {
    nic_name       = "nic"
    location       = "japaneast"
    rg_name        = "rg-mdata"
    vm_name        = "vm-data"
    size           = "Standard_D2s_v3"
    admin_username = "rajeev"
    admin_password = "Rajeev_12345"
    snet_name      = "snet"
    vnet_name      = "vnet"
    pip_name       = "pip"
    os_disk = {
      caching              = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }

    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      version   = "latest"
      sku       = "22_04-lts"
    }
  }
}
