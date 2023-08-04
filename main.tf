
# Configure the Azure provider
provider "azurerm" { 
  features {}  
}

resource "azurerm_resource_group" "default" {
  name     = "myrgwesteurope"
  location = "westeurope"

  tags = {
    environment = "test"
    cost = "mycost"
    country = "italy"
  }
}
