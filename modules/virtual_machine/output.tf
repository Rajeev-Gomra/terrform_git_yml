output "public_ip" {
    value = {for key, value in azurerm_linux_virtual_machine.vm : key => value.public_ip_address}
    
}