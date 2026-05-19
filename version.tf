terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.73.0"
    }
    random = {
        source = "hashicorp/random"
        version = "~> 3.9.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-statebackend-dev"
    storage_account_name = "ststatebackenddevqvomq"
    container_name       = "tfstate"
    key                  = "vm-stack"
  }
}

provider "azurerm" {
  features {}
}