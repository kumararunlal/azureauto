terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.7.0"
    }
  }

  # Update this block with the location of your terraform state file
  backend "azurerm" {
    resource_group_name  = "azure-cicd"
    storage_account_name = "cicdazure"
    container_name       = "tfstate"
    key                  = "deploy.tfstate"
    
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
   SUBSCRIPTION_ID = ""
   CLIENT_ID = ""
   CLIENT_SECRET = ""
   TENANT_ID = ""
features {}
}

# Create a resource group
resource "azurerm_resource_group" "rg_terra" {
  name     = "rg-terra"
  location = "West Europe"
}
