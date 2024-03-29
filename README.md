<!-- This file was automatically generated by the `geine`. Make all changes to `README.yaml` and run `make readme` to rebuild this file. -->

<p align="center"> <img src="https://user-images.githubusercontent.com/50652676/62349836-882fef80-b51e-11e9-99e3-7b974309c7e3.png" width="100" height="100"></p>


<h1 align="center">
    Terraform AZURE SENTINEL
</h1>

<p align="center" style="font-size: 1.2rem;"> 
    Terraform module to create SENTINEL resource on AZURE.
     </p>

<p align="center">

<a href="https://www.terraform.io">
  <img src="https://img.shields.io/badge/Terraform-v1.1.7-green" alt="Terraform">
</a>
<a href="LICENSE.md">
  <img src="https://img.shields.io/badge/License-APACHE-blue.svg" alt="Licence">
</a>


</p>
<p align="center">

<a href='https://facebook.com/sharer/sharer.php?u=https://github.com/clouddrove/terraform-azure-sentinel'>
  <img title="Share on Facebook" src="https://user-images.githubusercontent.com/50652676/62817743-4f64cb80-bb59-11e9-90c7-b057252ded50.png" />
</a>
<a href='https://www.linkedin.com/shareArticle?mini=true&title=Terraform+AZURE+SENTINEL&url=https://github.com/clouddrove/terraform-azure-sentinel'>
  <img title="Share on LinkedIn" src="https://user-images.githubusercontent.com/50652676/62817742-4e339e80-bb59-11e9-87b9-a1f68cae1049.png" />
</a>
<a href='https://twitter.com/intent/tweet/?text=Terraform+AZURE+SENTINEL&url=https://github.com/clouddrove/terraform-azure-sentinel'>
  <img title="Share on Twitter" src="https://user-images.githubusercontent.com/50652676/62817740-4c69db00-bb59-11e9-8a79-3580fbbf6d5c.png" />
</a>

</p>
<hr>


We eat, drink, sleep and most importantly love **DevOps**. We are working towards strategies for standardizing architecture while ensuring security for the infrastructure. We are strong believer of the philosophy <b>Bigger problems are always solved by breaking them into smaller manageable problems</b>. Resonating with microservices architecture, it is considered best-practice to run database, cluster, storage in smaller <b>connected yet manageable pieces</b> within the infrastructure. 

This module is basically combination of [Terraform open source](https://www.terraform.io/) and includes automatation tests and examples. It also helps to create and improve your infrastructure with minimalistic code instead of maintaining the whole infrastructure code yourself.

We have [*fifty plus terraform modules*][terraform_modules]. A few of them are comepleted and are available for open source usage while a few others are in progress.




## Prerequisites

This module has a few dependencies: 






## Examples


**IMPORTANT:** Since the `master` branch used in `source` varies based on new modifications, we suggest that you use the release versions [here](https://github.com/clouddrove/terraform-azure-sentinel/releases).


Here is an example of how you can use this module in your inventory structure:
```hcl
module "defender" {
 source                       = "clouddrove/sentinel/azure"
 name                         = "app"
 environment                  = "test"
 log_analytics_workspace_id   = module.log-analytics.workspace_id
 }
  ```






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
| sentinel\_workspace\_name | The name which should be used for this Sentinel MS Security Incident Alert Rule. Changing this forces a new Sentinel MS Security Incident Alert Rule to be created. | `string` | `""` | no |
| severity\_filter | Only create incidents from alerts when alert severity level is contained in this list. Possible values are High, Medium, Low and Informational. | `list(string)` | <pre>[<br>  "High"<br>]</pre> | no |
| subscription\_id | The ID of the subscription that this Iot Data Connector connects to. Changing this forces a new Iot Data Connector to be created. | `string` | `null` | no |
| tags | A map of tags to add to all resources | `map(string)` | `{}` | no |
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




## Testing
In this module testing is performed with [terratest](https://github.com/gruntwork-io/terratest) and it creates a small piece of infrastructure, matches the output like ARN, ID and Tags name etc and destroy infrastructure in your AWS account. This testing is written in GO, so you need a [GO environment](https://golang.org/doc/install) in your system. 

You need to run the following command in the testing folder:
```hcl
  go test -run Test
```



## Feedback 
If you come accross a bug or have any feedback, please log it in our [issue tracker](https://github.com/clouddrove/terraform-azure-sentinel/issues), or feel free to drop us an email at [hello@clouddrove.com](mailto:hello@clouddrove.com).

If you have found it worth your time, go ahead and give us a ★ on [our GitHub](https://github.com/clouddrove/terraform-azure-sentinel)!

## About us

At [CloudDrove][website], we offer expert guidance, implementation support and services to help organisations accelerate their journey to the cloud. Our services include docker and container orchestration, cloud migration and adoption, infrastructure automation, application modernisation and remediation, and performance engineering.

<p align="center">We are <b> The Cloud Experts!</b></p>
<hr />
<p align="center">We ❤️  <a href="https://github.com/clouddrove">Open Source</a> and you can check out <a href="https://github.com/clouddrove">our other modules</a> to get help with your new Cloud ideas.</p>

  [website]: https://clouddrove.com
  [github]: https://github.com/clouddrove
  [linkedin]: https://cpco.io/linkedin
  [twitter]: https://twitter.com/clouddrove/
  [email]: https://clouddrove.com/contact-us.html
  [terraform_modules]: https://github.com/clouddrove?utf8=%E2%9C%93&q=terraform-&type=&language=
