
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
  #Site_config is required https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#:~:text=An%20application_stack%20block%20supports%20the%20following%3A
  settings = {
    site_config = {
      application_stack = {
        node_version = "18-lts"
      }
    }
  }
}
