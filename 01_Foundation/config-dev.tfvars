resource_group_name = "RG-DEV"
location            = "westeurope"
use_rbac_mode       = true
tags = {
  terraformDeployment = "true",
  GithubRepo          = "https://github.com/omarinux/pocterraformactions"
  Environment         = "DEV"
}

resource_group_name = "RG-DEV-ONLYSYS"
location            = "westeurope"
use_rbac_mode       = true
tags = {
  terraformDeployment = "true",
  GithubRepo          = "https://github.com/omarinux/pocterraformactions"
  Environment         = "DEV"
}