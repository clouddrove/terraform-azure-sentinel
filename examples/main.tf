provider "azurerm" {
  features {}
  subscription_id = "000000-11111-1223-XXX-XXXXXXXXXXXX"
}

locals {
  name        = "app"
  environment = "test"
  location    = "Canada Central"
}

module "resource_group" {
  source      = "clouddrove/resource-group/azure"
  version     = "1.0.2"
  name        = local.name
  environment = local.environment
  location    = local.location
}

##-----------------------------------------------------------------------------
## Log Analytics module call.
##-----------------------------------------------------------------------------
module "log-analytics" {
  source                           = "clouddrove/log-analytics/azure"
  version                          = "1.1.0"
  name                             = local.name
  environment                      = local.environment
  create_log_analytics_workspace   = true
  log_analytics_workspace_sku      = "PerGB2018"
  retention_in_days                = 90
  daily_quota_gb                   = "-1"
  internet_ingestion_enabled       = true
  internet_query_enabled           = true
  resource_group_name              = module.resource_group.resource_group_name
  log_analytics_workspace_location = module.resource_group.resource_group_location
  log_analytics_workspace_id       = module.log-analytics.workspace_id
}

module "sentinel" {
  source                     = "./.."
  name                       = local.name
  environment                = local.environment
  log_analytics_workspace_id = module.log-analytics.workspace_id
}
