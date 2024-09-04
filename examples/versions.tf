# Terraform version
terraform {
  required_version = ">= 1.0.0"
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.108.0"
    }
  }
}
