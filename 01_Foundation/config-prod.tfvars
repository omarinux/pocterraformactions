rg_config = [
  #rg prod default
  {
    resource_group_name = "RG-PROD"
    location            = "westeurope"
    use_rbac_mode       = true
  },
  #rg prod private IT SYS ADMINS
  {
    resource_group_name = "RG-PROD-PRIVATE"
    location            = "westeurope"
    use_rbac_mode       = true
  }
]

tags = {
  terraformDeployment = "true",
  GithubRepo          = "https://github.com/omarinux/pocterraformactions"
  Environment         = "PROD"
}





/* 
resource_group_name = "RG-PROD"
location            = "westeurope"
use_rbac_mode       = true
tags = {
  terraformDeployment = "true",
  GithubRepo          = "https://github.com/omarinux/pocterraformactions"
  Environment         = "PROD"
} */