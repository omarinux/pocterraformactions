rg_config = [
  #rg dev default
  {
    resource_group_name = "RG-DEV"
    location            = "westeurope"
    use_rbac_mode       = true
  },
  #rg dev private IT SYS ADMINS
  {
    resource_group_name = "RG-DEV-PRIVATE"
    location            = "westeurope"
    use_rbac_mode       = true
  }
]

tags = {
  terraformDeployment = "true",
  GithubRepo          = "https://github.com/omarinux/pocterraformactions"
  Environment         = "DEV"
}


/* resource_group_name = "RG-DEV"
location            = "westeurope"
use_rbac_mode       = true
tags = {
  terraformDeployment = "true",
  GithubRepo          = "https://github.com/omarinux/pocterraformactions"
  Environment         = "DEV"
} */