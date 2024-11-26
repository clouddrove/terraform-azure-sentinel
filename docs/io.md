## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| alerts\_enabled | Should the alerts be enabled? Defaults to true. | `bool` | `true` | no |
| discovery\_logs\_enabled | Should the Discovery Logs be enabled? Defaults to true. | `bool` | `true` | no |
| display\_name | The friendly name of this Sentinel MS Security Incident Alert Rule. | `list(string)` | <pre>[<br>  "Create incidents based on Microsoft Defender for Cloud"<br>]</pre> | no |
| dtc\_ad\_enabled | Set to false to prevent the module from creating any resources. | `bool` | `false` | no |
| dtc\_advanced\_threat\_protection\_enabled | Set to false to prevent the module from creating any resources. | `bool` | `false` | no |
| dtc\_iot\_enabled | Set to false to prevent the module from creating any resources. | `bool` | `false` | no |
| dtc\_ms\_cloud\_app\_security\_enabled | Set to false to prevent the module from creating any resources. | `bool` | `false` | no |
| dtc\_ms\_defender\_advanced\_threat\_protection\_enabled | Set to false to prevent the module from creating any resources. | `bool` | `false` | no |
| dtc\_ms\_threat\_protection\_enabled | Set to false to prevent the module from creating any resources. | `bool` | `false` | no |
| dtc\_security\_center\_enabled | Set to false to prevent the module from creating any resources. | `bool` | `false` | no |
| dtc\_threat-intelligence\_enabled | Set to false to prevent the module from creating any resources. | `bool` | `false` | no |
| enabled | Set to false to prevent the module from creating any resources. | `bool` | `true` | no |
| environment | Environment (e.g. `prod`, `dev`, `staging`). | `string` | `""` | no |
| label\_order | Label order, e.g. sequence of application name and environment `name`,`environment`,'attribute' [`webserver`,`qa`,`devops`,`public`,] . | `list(any)` | <pre>[<br>  "name",<br>  "environment"<br>]</pre> | no |
| log\_analytics\_workspace\_id | The ID of the Log Analytics Workspace this Sentinel MS Security Incident Alert Rule belongs to. Changing this forces a new Sentinel MS Security Incident Alert Rule to be created. | `string` | `""` | no |
| managedby | ManagedBy, eg ''. | `string` | `""` | no |
| ms\_security\_enabled | Should this Sentinel MS Security Incident Alert Rule be enabled? Defaults to true. | `bool` | `true` | no |
| ms\_security\_incident\_enabled | Should this Sentinel MS Security Incident Alert Rule be enabled? Defaults to true. | `bool` | `true` | no |
| name | Name  (e.g. `app` or `cluster`). | `string` | `""` | no |
| product\_filter | The Microsoft Security Service from where the alert will be generated. Possible values are Azure Active Directory Identity Protection, Azure Advanced Threat Protection, Azure Security Center, Azure Security Center for IoT, Microsoft Cloud App Security, Microsoft Defender Advanced Threat Protection and Office 365 Advanced Threat Protection. | `list(string)` | <pre>[<br>  "Microsoft Cloud App Security"<br>]</pre> | no |
| repository | Terraform current module repo | `string` | `""` | no |
| sentinel\_enabled | Flag to control the module creation. | `bool` | `true` | no |
| severity\_filter | Only create incidents from alerts when alert severity level is contained in this list. Possible values are High, Medium, Low and Informational. | `list(string)` | <pre>[<br>  "High"<br>]</pre> | no |
| subscription\_id | The ID of the subscription that this Iot Data Connector connects to. Changing this forces a new Iot Data Connector to be created. | `string` | `null` | no |
| tenant\_id | The ID of the tenant that this Azure Active Directory Data Connector connects to. Changing this forces a new Azure Active Directory Data Connector to be created. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| dtc\_ad\_id | The ID of the Azure Active Directory Data Connector. |
| dtc\_ms\_cloud\_app\_security\_id | The ID of the Microsoft Cloud App Security Data Connector. |
| dtc\_threat\_protection\_id | The ID of the Azure Advanced Threat Protection Data Connector. |
| iot\_id | The ID of the Iot Data Connector. |
| security\_center\_id | The ID of the Azure Security Center Data Connector. |
| sentinel\_id | The ID of the Security Insights Sentinel Onboarding States. |

