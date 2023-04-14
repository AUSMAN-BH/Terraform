terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
    azuread = {
      source = "hashicorp/azuread"
    }
  }
}

provider "azurerm" {
  features {}

# cloud {
#     organization = "USARIF"
#     workspaces {
#       name = "usarif_rg"
#     }
#   }  
}