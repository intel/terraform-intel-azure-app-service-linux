<p align="center">
  <img src="https://github.com/intel/terraform-intel-azure-app-service-linux/blob/main/images/logo-classicblue-800px.png?raw=true" alt="Intel Logo" width="250"/>
</p>

# Intel Cloud Optimization Modules for Terraform

© Copyright 2022, Intel Corporation

## Intel Cloud Optimization Module - Azure App Service Linux

Module with more arguments

## Usage

**See examples folder for complete examples.**

main.tf

```hcl
module "intel-optimized-service-plan" {
  source              = "intel/azure-app-service-plan/intel"
  service_plan_name   = "intel-linux-service-plan-03"
  resource_group_name = "terraform-testing-rg"
  tags = {
    "Owner"    = "Intel.Cloud.Modules@intel.com"
    "Duration" = "4"
  }
}

module "linux-app-service" {
  source              = "intel/azure-app-service-linux/intel"
  app_name            = "intel-linux-app-service-03"
  resource_group_name = "terraform-testing-rg"
  service_plan_id     = module.intel-optimized-service-plan.id
  tags = {
    "Owner"    = "Intel.Cloud.Modules@intel.com"
    "Duration" = "4"
  }
  app_settings = {
    "my_variable" = "variable_value"
  }
  #Site_config is required 
  settings = {
    site_config = {
      minimum_tls_version = "1.2"
      ftps_state          = "Disabled"
      http2_enabled       = true
      application_stack = {
        python_version = "3.10"
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

settings site_config is required <https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#:~:text=An%20application_stack%20block%20supports%20the%20following%3A>
