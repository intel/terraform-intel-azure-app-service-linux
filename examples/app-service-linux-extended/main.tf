
module "intel-optimized-service-plan" {
  source              = "github.com/OTCShare2/terraform-intel-azure-app-service-plan.git"
  service_plan_name   = "intel-linux-service-plan-02"
  resource_group_name = "terraform-testing-rg"
  tags = {
    "Owner"    = "Intel.Cloud.Modules@intel.com"
    "Duration" = "4"
  }
}

module "linux-app-service" {
  source              = "../.."
  app_name            = "intel-linux-app-service-02"
  resource_group_name = "terraform-testing-rg"
  service_plan_id     = module.intel-optimized-service-plan.id
  tags = {
    "Owner"    = "Intel.Cloud.Modules@intel.com"
    "Duration" = "4"
  }
  app_settings = {
    "my_variable" = "variable_value"
  }
  settings = {
    site_config = {
      minimum_tls_version = "1.2"
      ftps_state          = "Disabled"
      http2_enabled = true
      application_stack = {
        python_version = "3.10"
      }
    }
  }
}
