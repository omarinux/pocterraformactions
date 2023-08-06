rg_config = [
  #rg uat default
  {
    resource_group_name       = "RG-UAT"
    location              = "westeurope"
    use_rbac_mode              = true
  },
  #rg uat private IT SYS ADMINS
  {
    resource_group_name       = "RG-UAT-PRIVATE"
    location              = "westeurope"
    use_rbac_mode              = true
  }
]

tags = {
  terraformDeployment = "true",
  GithubRepo          = "https://github.com/omarinux/pocterraformactions"
  Environment         = "UAT"
}







/* 
resource_group_name = "RG-UAT"
location            = "westeurope"
use_rbac_mode       = true
tags = {
  terraformDeployment = "true",
  GithubRepo          = "https://github.com/omarinux/pocterraformactions"
  Environment         = "UAT"
} */