output "service_plan_name" {
  description = "The name of the App Service Plan"
  value       = module.intel-optimized-service-plan.name
}

output "service_plan_id" {
  description = "The ID of the App Service Plan"
  value       = module.intel-optimized-service-plan.id
}

output "id" {
  value       = module.linux-app-service.id
  description = "The ID of the Linux App Service"
}

output "name" {
  value       = module.linux-app-service.name
  description = "The name of the Linux App Service"
}

output "location" {
  value       = module.linux-app-service.location
  description = "The location of the Linux App Service"
}

output "resource_group_name" {
  value       = module.linux-app-service.resource_group_name
  description = "The name of the resource group in which the Linux App Service is created"
}

output "app_settings" {
  value       = module.linux-app-service.app_settings
  description = "A map of the Linux App Service's application settings"
}

output "tags" {
  value       = module.linux-app-service.tags
  description = "A map of the Linux App Service's tags"
}

output "custom_domain_verification_id" {
  value       = module.linux-app-service.custom_domain_verification_id
  sensitive = true
  description = "The ID of the custom domain verification"
}

output "default_hostname" {
  value       = module.linux-app-service.default_hostname
  description = "The default hostname of the Linux App Service"
}

output "kind" {
  value       = module.linux-app-service.kind
  description = "The kind of the Linux App Service"
}

output "outbound_ip_addresses" {
  value       = module.linux-app-service.outbound_ip_addresses
  description = "The outbound IP addresses of the Linux App Service"
}

output "outbound_ip_address_list" {
  value       = module.linux-app-service.outbound_ip_address_list
  description = "The outbound IP address list of the Linux App Service"
}

output "possible_outbound_ip_addresses" {
  value       = module.linux-app-service.possible_outbound_ip_addresses
  description = "The possible outbound IP addresses of the Linux App Service"
}

output "possible_outbound_ip_address_list" {
  value       = module.linux-app-service.possible_outbound_ip_address_list
  description = "The possible outbound IP address list of the Linux App Service"
}

output "site_credential" {
  value       = module.linux-app-service.site_credential
  sensitive = true
  description = "The site credential of the Linux App Service"
}

output "identity" {
  value       = module.linux-app-service.identity
  description = "The identity of the Linux App Service"
}