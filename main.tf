terraform {
  required_version = ">=1.3.0"
  required_providers {
    azurerm = {
      "source" = "hashicorp/azurerm"
      version  = ">= 3.43.0"
    }
  }

  cloud {
    organization = "rrabionet"

    workspaces {
      name = "Terraform_CI"
    }
  }

}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}

module "azurerm-secstorage2" {
  source  = "app.terraform.io/rrabionet/azurerm-secstorage2/terraform"
  version = "1.0.0"
}


resource "azurerm_resource_group" "rg" {
  location = "eastus"
  name     = "813-eca3f4f8-hands-on-with-terraform-on-azure"
}


variable "ARM_CLIENT_ID" {

}

variable "ARM_SUBSCRIPTION_ID" {

}

variable "ARM_CLIENT_SECRET" {

}

variable "ARM_TENANT_ID" {

}