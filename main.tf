terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  subscription_id = "0137d880-e1dc-420a-be96-81f219425576"
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "terra-demo" {
  name     = "terra-demo-rg"
  location = "Central India"
}
