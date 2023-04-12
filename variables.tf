
#Module      : LABEL
#Description : Terraform label module variables.
variable "name" {
  type        = string
  default     = ""
  description = "Name  (e.g. `app` or `cluster`)."
}
variable "environment" {
  type        = string
  default     = ""
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}

variable "repository" {
  type        = string
  default     = ""
  description = "Terraform current module repo"
}

variable "label_order" {
  type        = list(any)
  default     = ["name", "environment"]
  description = "Label order, e.g. sequence of application name and environment `name`,`environment`,'attribute' [`webserver`,`qa`,`devops`,`public`,] ."
}

variable "managedby" {
  type        = string
  default     = ""
  description = "ManagedBy, eg ''."
}

variable "enabled" {
  type        = bool
  default     = true
  description = "Set to false to prevent the module from creating any resources."
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "A map of tags to add to all resources"
}

variable "sentinel_enabled" {
  type        = bool
  default     = true
  description = "Flag to control the module creation."
}

variable "log_analytics_workspace_id" {
  type        = string
  default     = ""
  description = "The ID of the Log Analytics Workspace this Sentinel MS Security Incident Alert Rule belongs to. Changing this forces a new Sentinel MS Security Incident Alert Rule to be created."
}

variable "sentinel_workspace_name" {
  type        = string
  default     = ""
  description = "The name which should be used for this Sentinel MS Security Incident Alert Rule. Changing this forces a new Sentinel MS Security Incident Alert Rule to be created."
}

variable "product_filter" {
  type        = list(string)
  default     = ["Microsoft Cloud App Security"]
  description = "The Microsoft Security Service from where the alert will be generated. Possible values are Azure Active Directory Identity Protection, Azure Advanced Threat Protection, Azure Security Center, Azure Security Center for IoT, Microsoft Cloud App Security, Microsoft Defender Advanced Threat Protection and Office 365 Advanced Threat Protection."
}

variable "display_name" {
  type        = list(string)
  default     = ["Create incidents based on Microsoft Defender for Cloud"]
  description = "The friendly name of this Sentinel MS Security Incident Alert Rule."
}

variable "severity_filter" {
  type        = list(string)
  default     = ["High"]
  description = "Only create incidents from alerts when alert severity level is contained in this list. Possible values are High, Medium, Low and Informational."
}

variable "ms_security_incident_enabled" {
  type        = bool
  default     = true
  description = " Should this Sentinel MS Security Incident Alert Rule be enabled? Defaults to true."
}

variable "ms_security_enabled" {
  type        = bool
  default     = true
  description = " Should this Sentinel MS Security Incident Alert Rule be enabled? Defaults to true."
}

variable "dtc_iot_enabled" {
  type        = bool
  default     = false
  description = "Set to false to prevent the module from creating any resources."
}

variable "dtc_security_center_enabled" {
  type        = bool
  default     = false
  description = "Set to false to prevent the module from creating any resources."
}

variable "dtc_ad_enabled" {
  type        = bool
  default     = false
  description = "Set to false to prevent the module from creating any resources."
}

variable "dtc_advanced_threat_protection_enabled" {
  type        = bool
  default     = false
  description = "Set to false to prevent the module from creating any resources."
}

variable "dtc_ms_cloud_app_security_enabled" {
  type        = bool
  default     = false
  description = "Set to false to prevent the module from creating any resources."
}

variable "alerts_enabled" {
  type        = bool
  default     = true
  description = "Should the alerts be enabled? Defaults to true."
}

variable "dtc_ms_defender_advanced_threat_protection_enabled" {
  type        = bool
  default     = false
  description = "Set to false to prevent the module from creating any resources."
}

variable "dtc_ms_threat_protection_enabled" {
  type        = bool
  default     = false
  description = "Set to false to prevent the module from creating any resources."
}

variable "dtc_threat-intelligence_enabled" {
  type        = bool
  default     = false
  description = "Set to false to prevent the module from creating any resources."
}

variable "discovery_logs_enabled" {
  type        = bool
  default     = true
  description = "Should the Discovery Logs be enabled? Defaults to true."
}

variable "subscription_id" {
  type        = string
  default     = null
  description = "The ID of the subscription that this Iot Data Connector connects to. Changing this forces a new Iot Data Connector to be created."
}

variable "tenant_id" {
  type        = string
  default     = null
  description = "The ID of the tenant that this Azure Active Directory Data Connector connects to. Changing this forces a new Azure Active Directory Data Connector to be created."
}
