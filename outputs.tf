output "id" {
  value       = azurerm_linux_web_app.web_app.id
  description = "The ID of the Linux App Service"
}

output "name" {
  value       = azurerm_linux_web_app.web_app.name
  description = "The name of the Linux App Service"
}

output "service_plan_id" {
  value       = azurerm_linux_web_app.web_app.service_plan_id
  description = "The ID of the App Service Plan"
}

output "location" {
  value       = azurerm_linux_web_app.web_app.location
  description = "The location of the Linux App Service"
}

output "resource_group_name" {
  value       = azurerm_linux_web_app.web_app.resource_group_name
  description = "The name of the resource group in which the Linux App Service is created"
}

output "app_settings" {
  value       = azurerm_linux_web_app.web_app.app_settings
  description = "A map of the Linux App Service's application settings"
}

output "tags" {
  value       = azurerm_linux_web_app.web_app.tags
  description = "A map of the Linux App Service's tags"
}

output "custom_domain_verification_id" {
  value       = azurerm_linux_web_app.web_app.custom_domain_verification_id
  sensitive   = true
  description = "The ID of the custom domain verification"
}

output "default_hostname" {
  value       = azurerm_linux_web_app.web_app.default_hostname
  description = "The default hostname of the Linux App Service"
}

output "kind" {
  value       = azurerm_linux_web_app.web_app.kind
  description = "The kind of the Linux App Service"
}

output "outbound_ip_addresses" {
  value       = azurerm_linux_web_app.web_app.outbound_ip_addresses
  description = "The outbound IP addresses of the Linux App Service"
}

output "outbound_ip_address_list" {
  value       = azurerm_linux_web_app.web_app.outbound_ip_address_list
  description = "The outbound IP address list of the Linux App Service"
}

output "possible_outbound_ip_addresses" {
  value       = azurerm_linux_web_app.web_app.possible_outbound_ip_addresses
  description = "The possible outbound IP addresses of the Linux App Service"
}

output "possible_outbound_ip_address_list" {
  value       = azurerm_linux_web_app.web_app.possible_outbound_ip_address_list
  description = "The possible outbound IP address list of the Linux App Service"
}

output "site_credential" {
  value       = azurerm_linux_web_app.web_app.site_credential
  sensitive   = true
  description = "The site credential of the Linux App Service"
}

output "identity" {
  value       = azurerm_linux_web_app.web_app.identity
  description = "The identity of the Linux App Service"
}