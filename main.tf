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
  ## resource_provider_registrations = "none" # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  subscription_id = "0137d880-e1dc-420a-be96-81f219425576"
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "terra-demo" {
  name     = "terra-demo-rg"
  location = "East Us"
}
