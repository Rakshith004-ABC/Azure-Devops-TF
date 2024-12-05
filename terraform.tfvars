resource_group_name      = "rkrs3"
location                 = "West Europe"
storage_account_name     = "b9storage"

......................

provider.tf:

terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "3.110.0"
    }
  }
}

provider "azurerm" {
  features {}
}

......................
terraform {
  backend "azurerm" {
    // resource_group_name  = "rs1"
    // storage_account_name = "rkstrg1234"
    // container_name       = "rkcontainer"
    // key                  = "storagestate.tfstate"
  }
}