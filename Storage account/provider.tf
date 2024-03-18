terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.96.0"
    }
  }
}


terraform {
  backend "azurerm" {
    resource_group_name  = "sharma-rg"
    storage_account_name = "sandeepstg"
    container_name       = "sandeep123"
    key                  = "stgterraform.tfstate"
  }
}

provider "azurerm" {
  features {
    
  }
}