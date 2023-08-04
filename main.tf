
# Configure the Azure provider
provider "azurerm" { 
  features {}  
}

resource "azurerm_resource_group" "default" {
  name     = "myrgwesteurope"
  location = "West Europe"

  tags = {
    environment = "test"
    cost = "mycost"
  }
}
