variable "resource_group_name" {
  type        = string
  description = "Specifies the name of the resource group that will be created."
}

variable "location" {
  type        = string
  description = "The location/region where Azure resource will be created."
  default     = "westeurope"
}


variable "vnets" {
  type = map(object({
    address_space = string
    subnets = list(object({
      subnet_name    = string
      subnet_address = string
    }))
  }))



/* variable "network_config" {
  type = list(object({
    name          = string
    address_space = string

  }))
}

variable "subnet_config" {
  type = list(object({
    name                 = string
    virtual_network_name = string
    address_prefixes     = string

  }))
 */}


variable "tags" {
  type        = map(any)
  description = "Specifies a map of tags to be applied to the resources created."
}

/* 
variable "storage_config" {
  type = list(object({
    name                      = string
    account_kind              = string
    account_tier              = string
    account_replication_type  = string
    access_tier               = string
    enable_https_traffic_only = bool
    min_tls_version           = string
    is_hns_enabled            = bool
  }))
}
 */