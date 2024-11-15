terraform {
  required_version = ">= 1.3.0"
  required_providers {
    # TODO: Ensure all required providers are listed here.
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 4.9.0"
    }
    modtm = {
      source  = "Azure/modtm"
      version = ">= 0.3.2, < 1.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.5.0"
    }
  }
}