resource "azurerm_virtual_machine" "example" {
  count                 = var.vm_count
  name                  = "${var.vm_name_prefix}-${count.index}"
  location              = var.location
  resource_group_name   = var.resource_group_name
  network_interface_ids = [var.subnet_id]

  vm_size               = var.vm_size

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  storage_os_disk {
    name              = "${var.vm_name_prefix}-${count.index}-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  tags = {
    name = "demo"
  }
}
