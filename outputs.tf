output "vm_public_ip_addresses" {
  description = "The public IP addresses of the created VMs"
  value       = [azurerm_virtual_machine.example.*.public_ip_address]
}
