
vnets = [
  {
    vnet_name     = "netubsch"
    address_space = ["192.168.0.0/23"]
    location      = "westeurope"
    subnets = [
      {
        name    = "sububschzurich"
        address = "192.168.0.0/24"
      },
      {
        name    = "sububschbern"
        address = "192.168.1.0/24"
      }
    ]
  },
  {
    vnet_name     = "netubsfr"
    address_space = ["192.168.4.0/23"]
    location      = "westeurope"
    subnets = [
      {
        name    = "sububsfrparis"
        address = "192.168.4.0/24"
      },
      {
        name    = "sububsfrlyon"
        address = "192.168.5.0/24"
      }
    ]
  },
  {
    vnet_name     = "netcornerch"
    address_space = ["192.168.10.0/23"]
    location      = "westeurope"
    subnets = [
      {
        name    = "subcornerchlugano"
        address = "192.168.10.0/24"
      },
      {
        name    = "subcornerchbasel"
        address = "192.168.11.0/24"
      }
    ]
  },
  {
    vnet_name     = "netintesait"
    address_space = ["192.168.20.0/23"]
    location      = "uksouth"
    subnets = [
      {
        name    = "subintesaitmilan"
        address = "192.168.20.0/24"
      },
      {
        name    = "subintesaitrome"
        address = "192.168.21.0/24"
      }
    ]
  }
]

resource_group_name = "RG-DEV"
#location            = "westeurope"

tags = {
  terraformDeployment = "true",
  GithubRepo          = "https://github.com/omarinux/pocterraformactions"
  Environment         = "DEV"
}
