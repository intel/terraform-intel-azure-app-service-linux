output "service_plan_name" {
  description = "The name of the App Service Plan"
  value       = module.intel-optimized-service-plan.name
}

output "id" {
  description = "The ID of the App Service Plan"
  value       = module.intel-optimized-service-plan.id
}
