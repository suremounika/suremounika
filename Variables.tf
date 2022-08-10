variable "resource_group_name" {
  description = "The name of the resource group in which to create the virtual network."
}

variable "vnet_name" {
    description = "Name of the virtual network to create"
    default     = "tfvnet"
}

variable "vm_name" {
    description = "Name of the virtual machine to create"
    default     = "tfvm"
}

variable "location" {
  description = "The location/region where the virtual network is created. Changing this forces a new resource to be created."
  default     = "eastus"
}

variable "tags" {
  type        = map
  default     = {}
  description = "Any tags which should be assigned to the resources in this example"
}

variable "username" {
  default     = "JAGADEESH31"
  description = "Admin username for all VMs"
}

variable "password" {
  default     = "Jagadeesh@31"
  description = "Admin password for all VMs"
}

variable "server_name" {
  default     = "ten"
  description = "Specify the hostname for the Chef server"
}

variable "azure_rg_name" {
  default     = "labs" 
  description = "Specify the name of the new resource group"
}
