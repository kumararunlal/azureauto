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
   SUBSCRIPTION_ID = "133c91c8-d143-42e8-8033-79c26d430443"
   CLIENT_ID = "6bb91583-db12-4305-88e8-a5eb942a2771"
   CLIENT_SECRET = "fbj8Q~vWXI3r0Jbe2yLLUsk8Y2sX.mM96GnoabOo"
   TENANT_ID = "63fc3710-d0e2-4b98-b534-e70f4f6c09d6"
features {}
}

# Create a resource group
resource "azurerm_resource_group" "rg_terra" {
  name     = "rg-terra"
  location = "West Europe"
}
