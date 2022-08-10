provider "azurerm" {
    features{}
 }

resource "azurerm_resource_group" "rg" {
  name     = "${var.azure_rg_name}"
  location = "${var.location}"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "${var.vnet_name}"
  location            = "${var.location}"
  address_space       = ["10.0.0.0/16"]
  resource_group_name = "${azurerm_resource_group.rg.name}"
}

resource "azurerm_subnet" "subnet1" {
  name                 = "${var.azure_rg_name}_Subnet1"
  virtual_network_name = "${azurerm_virtual_network.vnet.name}"
  resource_group_name  = "${azurerm_resource_group.rg.name}"
  address_prefixes       = ["10.0.0.0/24"]
}

# resource "azurerm_subnet" "subnet2" {
#   name                 = "${var.azure_rg_name}_Subnet2"
#   virtual_network_name = "${azurerm_virtual_network.vnet.name}"
#   resource_group_name  = "${azurerm_resource_group.rg.name}"
#   address_prefixes       = ["10.0.0.0/24"]
# }

resource "azurerm_network_interface" "main" {
  name                = "${var.vm_name}-nic-${count.index}"
  location            = "${azurerm_resource_group.rg.location}"
  resource_group_name = "${azurerm_resource_group.rg.name}"
  tags                = "${var.tags}"
  count               = "3"

  ip_configuration {
    name                          = "testconfiguration${count.index}"
    subnet_id                     = "${azurerm_subnet.subnet1.id}"
    private_ip_address_allocation = "Dynamic"
  }
}