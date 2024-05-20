provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_dev_test_lab" "example" {
  name                = "example-devtestlab"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  tags = {
    "Sydney" = "Australia"
  }
}

resource "azurerm_dev_test_virtual_network" "example" {
  name                = "example-network"
  lab_name            = azurerm_dev_test_lab.example.name
  resource_group_name = azurerm_resource_group.example.name

  subnet {
    use_public_ip_address           = "Allow"
    use_in_virtual_machine_creation = "Allow"
  }
}

resource "azurerm_dev_test_linux_virtual_machine" "example" {
  name                   = "example-vm03"
  lab_name               = azurerm_dev_test_lab.example.name
  resource_group_name    = azurerm_resource_group.example.name
  location               = azurerm_resource_group.example.location
  size                   = "Standard_DS2"
  username               = "exampleuser99"
  ssh_key                = file("~/.ssh/id_rsa.pub")
  lab_virtual_network_id = azurerm_dev_test_virtual_network.example.id
  lab_subnet_name        = azurerm_dev_test_virtual_network.example.subnet[0].name
  storage_type           = "Premium"
  notes                  = "Some notes about this Virtual Machine."

  gallery_image_reference {
    offer     = "UbuntuServer"
    publisher = "Canonical"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  
}