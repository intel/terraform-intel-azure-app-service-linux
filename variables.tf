########################
####     Intel      ####
########################

########################
####    Required    ####
########################

#Variables Terraform azurerm_linux_web_app resource

variable "app_name" {
  description = "The name of the Linux Web App Service."
  type        = string
}

#Location is derived from the resource group
variable "resource_group_name" {
  description = "The name of the Resource Group in which to create the Linux Web App Service."
  type        = string
}

variable "service_plan_id" {
  description = "The ID of the App Service Plan within which to create this Linux Web App Service."
  type        = string
}

########################
####     Other      ####
########################

# variable "site_config" {
#   description = "A site_config block, see examples folder for details on how to use it."
#   type        = any
#   default     = {}
# }

variable "app_settings" {
  description = "A map of key/value pairs of App Settings."
  type        = map(any)
  default     = {}
}

# variable "auth_settings" {
#     description = "A auth_settings block, see examples folder for details on how to use it."
#     type = any
#     default = {}
# }

# variable "backup" {
#     description = "A backup block, see examples folder for details on how to use it."
#     type = any
#     default = {}
# }

variable "client_affinity_enabled" {
  description = "Should the App Service send session affinity cookies, which route client requests in the same session to the same instance?"
  type        = bool
  default     = false
}

variable "client_certificate_enabled" {
  description = "Should the App Service require clients to authenticate with a Certificate?"
  type        = bool
  default     = false
}

variable "client_certificate_mode" {
  description = "The Client Certificate Mode, can be Optional or Required."
  type        = string
  default     = "Optional"
}

variable "client_certificate_exclusion_paths" {
  description = "The Client Certificate Exclusion Paths separated by ; (semicolon)."
  type        = string
  default     = ""
}

variable "connection_strings" {
  description = "Connection strings for App Service"
  type        = list(map(string))
  default     = []
}

variable "enabled" {
  description = "Is the Linux Web App Service enabled?"
  type        = bool
  default     = true
}

variable "https_only" {
  description = "Should the Linux Web App Service only be accessible via HTTPS only?"
  type        = bool
  default     = true
}

variable "identity_ids" {
  description = "Specifies a list of user managed identity ids"
  type        = list(string)
  default     = []
}

variable "identity_type" {
  description = "The Managed Service Identity. Possible values are SystemAssigned, UserAssigned, and 'SystemAssigned, UserAssigned' (to enable both)"
  type        = string
  default     = ""
}

variable "key_vault_reference_identity" {
  description = "The Managed Service Identity ID which should be used to access Key Vault."
  type        = string
  default     = ""
}

variable "settings" {
  description = "Variable used to pass in a list of settings to be used in the Linux Web App Service."
  default     = {}
  type        = any
}

# variable "logs" {
#     description = "A logs block, see examples folder for details on how to use it."
#     type = any
#     default = {}
# }

variable "virtual_network_subnet_id" {
  description = "The subnet id which will be used by this Web App for regional virtual network integration."
  type        = string
  default     = null
}

variable "storage_key_vault_secret_id" {
  type        = string
  description = "The secret ID for the connection string of the storage account used by the function app"
  default     = ""
}

variable "storage_uses_managed_identity" {
  type        = bool
  description = "If you want the storage account to use a managed identity instead of a access key"
  default     = false
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}