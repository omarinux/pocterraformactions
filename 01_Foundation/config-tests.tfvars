
rg_config = [
  #rg test default
  {
    resource_group_name       = "RG-TEST"
    location              = "westeurope"
    use_rbac_mode              = true
  },
  #rg test private IT SYS ADMINS
  {
    resource_group_name       = "RG-TEST-PRIVATE"
    location              = "westeurope"
    use_rbac_mode              = true
  }
]

tags = {
  terraformDeployment = "true",
  GithubRepo          = "https://github.com/omarinux/pocterraformactions"
  Environment         = "TEST"
}








/* 

resource_group_name = "RG-TEST"
location            = "westeurope"
use_rbac_mode       = true
tags = {
  terraformDeployment = "true",
  GithubRepo          = "https://github.com/omarinux/pocterraformactions"
  Environment         = "TEST"
} */