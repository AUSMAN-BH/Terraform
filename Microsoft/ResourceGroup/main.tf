# terraform {
#   required_providers {
#     azurerm = {
#       source = "hashicorp/azurerm"
#       version = "3.52.0"
#     }
#   }


# cloud {
#     organization = "USARIF"
#     workspaces {
#       name = "usarif_rg"
#     }
#   }
# }


# provider "azurerm" {
#   # Configuration options
# }

resource "azurerm_resource_group" "example" {
  name     = "Terraform_test_rg"
  location = "central us"
}