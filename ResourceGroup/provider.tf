terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.87.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "APM-rg"
    storage_account_name = "apmstorage12"
    container_name       = "vianycontainer"
    key                  = "prod.terraform.tfstate"
  }
}


provider "azurerm" {
  features {

  }
}