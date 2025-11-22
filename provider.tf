# Define the AzureRM provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0" # Specify a suitable version
    }
  }
}

provider "azurerm" {
  features {} # This block is required for the AzureRM provider
}

# Define the Azure Resource Group
resource "azurerm_resource_group" "example_rg" {
  name     = "my-terraform-resource-group"
  location = "East US"
}
