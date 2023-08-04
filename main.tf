# Define Terraform provider
#terraform {
#  backend "azurerm" {
#    resource_group_name  = "vispoc-tfstate-rg"
#    storage_account_name = "vispoctfstate3253"
#    container_name       = "tfstate"
#    key                  = "actions.tfstate"
#  }

#  required_providers {
#    azurerm = {
#      version = "~>3.2"
#      source  = "hashicorp/azurerm"
#    }
#  }
#}
# Configure the Azure provider
provider "azurerm" { 
  features {}  
}

resource "azurerm_resource_group" "default" {
  name     = "firstrg20230804"
  location = "East US 2"

  tags = {
    environment = "test"
  }
}
