##################################################
# NETWORK RESOURCES                              #
##################################################
#Create Network resources needed for my super awesome project

/* resource "azurerm_virtual_network" "network" {
  #name                = random_pet.azurerm_virtual_network_name.id

  count               = length(var.network_config)
  resource_group_name = var.resource_group_name
  location            = var.location

  name          = "${lower(var.network_config[count.index].name)}${random_integer.sa_num.result}"
  address_space = var.network_config.address_space

  #Apply tags
  tags = var.tags

} */

resource "azurerm_virtual_network" "vnets" {
  for_each            = var.vnets
  name                = each.key
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = [each.value.address_space]
  
  #Apply tags
  tags = var.tags

}

/* resource "azurerm_subnet" "subnet" {
  count               = length(var.subnet_config)
  resource_group_name = var.resource_group_name
  #location            = var.location

  name                 = "${lower(var.subnet_config[count.index].virtual_network_name)}${random_integer.sa_num.result}"
  virtual_network_name = "${lower(var.subnet_config[count.index].virtual_network_name)}${random_integer.sa_num.result}"
  address_prefixes     = var.subnet_config[count.index].address_prefixes
}

resource "random_integer" "sa_num" {
  min = 0001
  max = 9999
} */



/* resource "azurerm_storage_account" "sas" {
  count               = length(var.storage_config)
  resource_group_name = var.resource_group_name
  location            = var.location

  #values from variable config object
  name                      = "${lower(var.storage_config[count.index].name)}${random_integer.sa_num.result}"
  account_kind              = var.storage_config[count.index].account_kind
  account_tier              = var.storage_config[count.index].account_tier
  account_replication_type  = var.storage_config[count.index].account_replication_type
  access_tier               = var.storage_config[count.index].access_tier
  enable_https_traffic_only = var.storage_config[count.index].enable_https_traffic_only
  min_tls_version           = var.storage_config[count.index].min_tls_version
  is_hns_enabled            = var.storage_config[count.index].is_hns_enabled

  #Apply tags
  tags = var.tags
}

resource "random_integer" "sa_num" {
  min = 0001
  max = 9999
} */