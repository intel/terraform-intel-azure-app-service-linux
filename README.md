<p align="center">
  <img src="https://github.com/intel/terraform-intel-azure-app-service-linux/blob/main/images/logo-classicblue-800px.png?raw=true" alt="Intel Logo" width="250"/>
</p>

# Intel Cloud Optimization Modules for Terraform

© Copyright 2022, Intel Corporation

## Intel Cloud Optimization Module - Azure App Service Linux Web App

Module usage for creating an Azure App Service Linux Web App

## Usage

**See examples folder for complete examples.**

By default, for the Linux App Web you only have to pass four variables

```hcl
app_name
resource_group_name
service_plan_id
settings = {
    site_config = {
      application_stack = {
        node_version = "18-lts"
      }
    }
}

```

An app service web app needs a App Service Plan, for that look at the Intel App Service Plan module.

main.tf

```hcl
module "intel-optimized-service-plan" {
  source              = "intel/azure-app-service-plan/intel"
  service_plan_name   = "intel-linux-service-plan-02"
  resource_group_name = "terraform-testing-rg"
  }
}

module "linux-app-service" {
  source              = "intel/azure-app-service-linux/intel"
  app_name            = "intel-linux-app-service-02"
  resource_group_name = "terraform-testing-rg"
  service_plan_id     = module.intel-optimized-service-plan.id
  #Site_config is required 
  settings = {
    site_config = {
      application_stack = {
        node_version = "18-lts"
      }
    }
  }
}
```

Run Terraform

```hcl
terraform init  
terraform plan
terraform apply 
```

## Considerations

settings site_config is required <https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#:~:text=An%20application_stack%20block%20supports%20the%20following%3A>

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.3.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>3.40.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~>3.40.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_linux_web_app.web_app](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app) | resource |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_name"></a> [app\_name](#input\_app\_name) | The name of the Linux Web App Service. | `string` | n/a | yes |
| <a name="input_app_settings"></a> [app\_settings](#input\_app\_settings) | A map of key/value pairs of App Settings. | `map(any)` | `{}` | no |
| <a name="input_client_affinity_enabled"></a> [client\_affinity\_enabled](#input\_client\_affinity\_enabled) | Should the App Service send session affinity cookies, which route client requests in the same session to the same instance? | `bool` | `false` | no |
| <a name="input_client_certificate_enabled"></a> [client\_certificate\_enabled](#input\_client\_certificate\_enabled) | Should the App Service require clients to authenticate with a Certificate? | `bool` | `false` | no |
| <a name="input_client_certificate_exclusion_paths"></a> [client\_certificate\_exclusion\_paths](#input\_client\_certificate\_exclusion\_paths) | The Client Certificate Exclusion Paths separated by ; (semicolon). | `string` | `""` | no |
| <a name="input_client_certificate_mode"></a> [client\_certificate\_mode](#input\_client\_certificate\_mode) | The Client Certificate Mode, can be Optional or Required. | `string` | `"Optional"` | no |
| <a name="input_connection_strings"></a> [connection\_strings](#input\_connection\_strings) | Connection strings for App Service | `list(map(string))` | `[]` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Is the Linux Web App Service enabled? | `bool` | `true` | no |
| <a name="input_https_only"></a> [https\_only](#input\_https\_only) | Should the Linux Web App Service only be accessible via HTTPS only? | `bool` | `true` | no |
| <a name="input_identity_ids"></a> [identity\_ids](#input\_identity\_ids) | Specifies a list of user managed identity ids | `list(string)` | `[]` | no |
| <a name="input_identity_type"></a> [identity\_type](#input\_identity\_type) | The Managed Service Identity. Possible values are SystemAssigned, UserAssigned, and 'SystemAssigned, UserAssigned' (to enable both) | `string` | `""` | no |
| <a name="input_key_vault_reference_identity"></a> [key\_vault\_reference\_identity](#input\_key\_vault\_reference\_identity) | The Managed Service Identity ID which should be used to access Key Vault. | `string` | `""` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the Resource Group in which to create the Linux Web App Service. | `string` | n/a | yes |
| <a name="input_service_plan_id"></a> [service\_plan\_id](#input\_service\_plan\_id) | The ID of the App Service Plan within which to create this Linux Web App Service. | `string` | n/a | yes |
| <a name="input_settings"></a> [settings](#input\_settings) | Variable used to pass in a list of settings to be used in the Linux Web App Service. | `any` | `{}` | no |
| <a name="input_storage_key_vault_secret_id"></a> [storage\_key\_vault\_secret\_id](#input\_storage\_key\_vault\_secret\_id) | The secret ID for the connection string of the storage account used by the function app | `string` | `""` | no |
| <a name="input_storage_uses_managed_identity"></a> [storage\_uses\_managed\_identity](#input\_storage\_uses\_managed\_identity) | If you want the storage account to use a managed identity instead of a access key | `bool` | `false` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |
| <a name="input_virtual_network_subnet_id"></a> [virtual\_network\_subnet\_id](#input\_virtual\_network\_subnet\_id) | The subnet id which will be used by this Web App for regional virtual network integration. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_app_settings"></a> [app\_settings](#output\_app\_settings) | A map of the Linux App Service's application settings |
| <a name="output_custom_domain_verification_id"></a> [custom\_domain\_verification\_id](#output\_custom\_domain\_verification\_id) | The ID of the custom domain verification |
| <a name="output_default_hostname"></a> [default\_hostname](#output\_default\_hostname) | The default hostname of the Linux App Service |
| <a name="output_id"></a> [id](#output\_id) | The ID of the Linux App Service |
| <a name="output_identity"></a> [identity](#output\_identity) | The identity of the Linux App Service |
| <a name="output_kind"></a> [kind](#output\_kind) | The kind of the Linux App Service |
| <a name="output_location"></a> [location](#output\_location) | The location of the Linux App Service |
| <a name="output_name"></a> [name](#output\_name) | The name of the Linux App Service |
| <a name="output_outbound_ip_address_list"></a> [outbound\_ip\_address\_list](#output\_outbound\_ip\_address\_list) | The outbound IP address list of the Linux App Service |
| <a name="output_outbound_ip_addresses"></a> [outbound\_ip\_addresses](#output\_outbound\_ip\_addresses) | The outbound IP addresses of the Linux App Service |
| <a name="output_possible_outbound_ip_address_list"></a> [possible\_outbound\_ip\_address\_list](#output\_possible\_outbound\_ip\_address\_list) | The possible outbound IP address list of the Linux App Service |
| <a name="output_possible_outbound_ip_addresses"></a> [possible\_outbound\_ip\_addresses](#output\_possible\_outbound\_ip\_addresses) | The possible outbound IP addresses of the Linux App Service |
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | The name of the resource group in which the Linux App Service is created |
| <a name="output_service_plan_id"></a> [service\_plan\_id](#output\_service\_plan\_id) | The ID of the App Service Plan |
| <a name="output_site_credential"></a> [site\_credential](#output\_site\_credential) | The site credential of the Linux App Service |
| <a name="output_tags"></a> [tags](#output\_tags) | A map of the Linux App Service's tags |
<!-- END_TF_DOCS -->