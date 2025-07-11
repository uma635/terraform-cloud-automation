terraform {
    required_providers {
        azure = {
            source  = "hashicorp/azurerm"
            version = "~> 3.0"
        }
    }
}

provider "azurerm" {
features {}
    }

resource "azurerm_resource_group" "example" {
    name     = "example-resources"
    location = "West Europe"
}




