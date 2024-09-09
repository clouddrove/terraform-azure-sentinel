provider "azurerm" {
  features {}
}

module "resource_group" {
  source  = "clouddrove/resource-group/azure"
  version = "1.0.2"

  name        = "app-sentianl"
  environment = "test-m"
  label_order = ["name", "environment"]
  location    = "Canada Central"
}
module "log-analytics" {
  source                           = "clouddrove/log-analytics/azure"
  version                          = "1.1.0"
  name                             = "app"
  environment                      = "test"
  label_order                      = ["name", "environment"]
  create_log_analytics_workspace   = true
  log_analytics_workspace_sku      = "PerGB2018"
  resource_group_name              = module.resource_group.resource_group_name
  log_analytics_workspace_location = module.resource_group.resource_group_location
}

module "sentinel" {
  source                     = "./.."
  name                       = "app"
  environment                = "test"
  log_analytics_workspace_id = module.log-analytics.workspace_id
}
