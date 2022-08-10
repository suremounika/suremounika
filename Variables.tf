# Azure Options
variable "azure_region" {
  default     = "westus3" # Use region shortname here as it's interpolated into the URLs
  description = "The location/region where the resources are created."
}

variable "azure_rg_name" {
  default     = "lab" # This will get a unique timestamp appended
  description = "Specify the name of the new resource group"
}

variable "source_address_prefix" {
  default     = "*"
  description = "Provide an IP or subnet to restrict access. 1.2.3.4 or 1.2.3.0/24"
}


# Shared Options

variable "username" {
  default     = "JAGADEESH31"
  description = "Admin username for all VMs"
}

variable "password" {
  default     = "Jagadeesh@31"
  description = "Admin password for all VMs"
}

variable "vm_size" {
  default     = "Standard_B1s"
  description = "Specify the VM Size"
}

variable "server_name" {
  default     = "win"
  description = "Specify the hostname for the Chef server"
}
