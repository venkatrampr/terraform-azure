variable "resource_group_name" {
  description = "The name of the resource group in which to create the VM"
  type        = string
}

variable "location" {
  description = "The Azure region in which to create the VM"
  type        = string
}

variable "vm_count" {
  description = "The number of VM instances to create"
  type        = number
}

variable "vm_size" {
  description = "The size of the VM instances"
  type        = string
}

variable "vm_name_prefix" {
  description = "The prefix to use for the names of the VM instances"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet in which to place the VM instances"
  type        = string
}
