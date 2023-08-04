resource_group_name = "RG-UAT"
location            = "westeurope"

storage_config = [
  #V2 Storage
  {
    name                      = "sa-ubs-"
    account_kind              = "StorageV2"
    account_tier              = "Standard"
    account_replication_type  = "LRS"
    min_tls_version           = "TLS1_2"
    enable_https_traffic_only = true
    access_tier               = "Cool"
    is_hns_enabled            = false
  },
  #ADLS2 Storage
  {
    name                      = "sa-corner-"
    account_kind              = "StorageV2"
    account_tier              = "Standard"
    account_replication_type  = "LRS"
    min_tls_version           = "TLS1_2"
    enable_https_traffic_only = false
    access_tier               = "Hot"
    is_hns_enabled            = true
  }
]

tags = {
  terraformDeployment = "true",
  GithubRepo          = "https://github.com/omarinux/pocterraformactions"
  Environment         = "UAT"
}