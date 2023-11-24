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
