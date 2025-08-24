terraform {
  required_version = ">= 1.3.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.117"
    }
  }
  backend "azurerm" {
    resource_group_name  = "astha-azure"         
    storage_account_name = "tfstate20055"        
    container_name       = "tfstate"             
    key                  = "terraform.tfstate"   
  }
}

provider "azurerm" {
  features {}
}
