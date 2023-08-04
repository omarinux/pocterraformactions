terraform {
  backend "azurerm" {
    resource_group_name  = "vispoc-tstate-rg"
    storage_account_name = "vispoctfstate3253"
    container_name       = "tfstate"
    key                  = "actions.tfstate"
  }
}
