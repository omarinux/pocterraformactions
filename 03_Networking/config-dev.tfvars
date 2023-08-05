resource_group_name = "RG-DEV"
location            = "westeurope"



default = {
    "netubsch1" = {
      address_space = "192.168.0.0/16",
      subnets       = []
    },
    "netubsfr1" = {
      address_space = "10.0.0.0/16",
      subnets = [
        {
          subnet_name    = "sububsfr1_paris_netubsfr1"
          subnet_address = "10.0.2.0/24"
        },
        {
          subnet_name    = "sububsfr2_lyon_netubsfr1"
          subnet_address = "10.0.0.0/24"
        }
      ]
    },

    "netcornerch1" = {
      address_space = "10.80.0.0/16"
      subnets = [
        {
          subnet_name    = "subcornerch1_bern_netcornerch1"
          subnet_address = "10.80.2.0/24"
        },

        {
          subnet_name    = "subcornerch2_zurich_netcornerch1"
          subnet_address = "10.80.1.0/24"
        },

        {
          subnet_name    = "subcornerch3_lugano_netcornerch1"
          subnet_address = "10.80.0.0/24"
        },
      ]
    }
  }
}

/* network_config = [
  # UBS CH Address Space 10.0.0.0/16
  {
    name          = "netubsch"
    address_space = [10.0.0.0/16]
  },
  
  /*
  # UBS France Address Space 10.10.0.0/16
  {
    name          = "netubsfr"
    address_space = [10.10.0.0/16]
  }

]


subnet_config = [
  # UBS CH BU Zurich Subnet 10.0.0.0/24
  {
    name                 = "sububschzurich"
    virtual_network_name = "sububschzurich"
    address_prefixes     = "10.0.0.0/24"
  },

  # UBS CH BU Bern Subnet 10.0.1.0/24
  {
    name                 = "sububschbern"
    virtual_network_name = "sububschbern"
    address_prefixes     = "10.0.1.0/24"
  },

  # UBS FR BU Paris Subnet 10.10.0.0/24
  {
    name                 = "sububsfrparis"
    virtual_network_name = "sububsfrparis"
    address_prefixes     = "10.10.0.0/24"
  },

  # UBS FR BU Lyon Subnet 10.10.1.0/24
  {
    name                 = "sububsfrlyon"
    virtual_network_name = "sububsfrlyon"
    address_prefixes     = "10.10.1.0/24"
  }
]
 */
 
tags = {
  terraformDeployment = "true",
  GithubRepo          = "https://github.com/omarinux/pocterraformactions"
  Environment         = "DEV"
}