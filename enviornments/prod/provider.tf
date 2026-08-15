terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"

    }
  }
  # backend "azurerm" {
  #   resource_group_name  = "rg-dev-tfstate-1"
  #   storage_account_name = "strgdevtfstate4444"
  #   container_name       = "tfstate"
  #   key                  = "dev.tfstate"
  # }
}

provider "azurerm" {
  features {}
}
