<p align="center">
  <img src="https://github.com/intel/terraform-intel-azure-app-service-linux/blob/main/images/logo-classicblue-800px.png?raw=true" alt="Intel Logo" width="250"/>
</p>

# Intel Optimized Cloud Modules for Terraform

© Copyright 2024, Intel Corporation

## Intel Optimized Cloud Module - Azure App Service Linux

Simple usage of the module

## Usage

**See examples folder for complete examples.**

main.tf
```hcl
module "intel-optimized-service-plan" {
  source              = "intel/azure-app-service-plan/intel"
  service_plan_name   = "intel-linux-service-plan-02"
  resource_group_name = "terraform-testing-rg"
  tags = {
    "Owner"    = "Intel.Cloud.Modules@intel.com"
    "Duration" = "4"
  }
}

module "linux-app-service" {
  source              = "intel/azure-app-service-linux/intel"
  app_name            = "intel-linux-app-service-02"
  resource_group_name = "terraform-testing-rg"
  service_plan_id     = module.intel-optimized-service-plan.id
  tags = {
    "Owner"    = "Intel.Cloud.Modules@intel.com"
    "Duration" = "4"
  }
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
export TF_VAR_db_password ='<USE_A_STRONG_PASSWORD>'

terraform init  
terraform plan
terraform apply 
```
## Considerations
settings site_config is required https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#:~:text=An%20application_stack%20block%20supports%20the%20following%3A