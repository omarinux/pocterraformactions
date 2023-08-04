
# Configure the Azure provider
provider "azurerm" { 
  features {}  
}

resource "azurerm_resource_group" "default" {
  name     = "firstrg20230804"
  location = "East US 2"

  tags = {
    environment = "test"
    cost = "mycost"
    country = "italy"
  }
}
