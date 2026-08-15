output "recovery_services_vaults_id" {
  description = "Map of id values across all recovery_services_vaults, keyed the same as var.recovery_services_vaults"
  value       = { for k, v in azurerm_recovery_services_vault.recovery_services_vaults : k => v.id if v.id != null && length(v.id) > 0 }
}
output "recovery_services_vaults_classic_vmware_replication_enabled" {
  description = "Map of classic_vmware_replication_enabled values across all recovery_services_vaults, keyed the same as var.recovery_services_vaults"
  value       = { for k, v in azurerm_recovery_services_vault.recovery_services_vaults : k => v.classic_vmware_replication_enabled if v.classic_vmware_replication_enabled != null }
}
output "recovery_services_vaults_cross_region_restore_enabled" {
  description = "Map of cross_region_restore_enabled values across all recovery_services_vaults, keyed the same as var.recovery_services_vaults"
  value       = { for k, v in azurerm_recovery_services_vault.recovery_services_vaults : k => v.cross_region_restore_enabled if v.cross_region_restore_enabled != null }
}
output "recovery_services_vaults_encryption" {
  description = "Map of encryption values across all recovery_services_vaults, keyed the same as var.recovery_services_vaults"
  value       = { for k, v in azurerm_recovery_services_vault.recovery_services_vaults : k => one(v.encryption) if v.encryption != null && length(v.encryption) > 0 }
}
output "recovery_services_vaults_identity" {
  description = "Map of identity values across all recovery_services_vaults, keyed the same as var.recovery_services_vaults"
  value       = { for k, v in azurerm_recovery_services_vault.recovery_services_vaults : k => one(v.identity) if v.identity != null && length(v.identity) > 0 }
}
output "recovery_services_vaults_immutability" {
  description = "Map of immutability values across all recovery_services_vaults, keyed the same as var.recovery_services_vaults"
  value       = { for k, v in azurerm_recovery_services_vault.recovery_services_vaults : k => v.immutability if v.immutability != null && length(v.immutability) > 0 }
}
output "recovery_services_vaults_location" {
  description = "Map of location values across all recovery_services_vaults, keyed the same as var.recovery_services_vaults"
  value       = { for k, v in azurerm_recovery_services_vault.recovery_services_vaults : k => v.location if v.location != null && length(v.location) > 0 }
}
output "recovery_services_vaults_monitoring" {
  description = "Map of monitoring values across all recovery_services_vaults, keyed the same as var.recovery_services_vaults"
  value       = { for k, v in azurerm_recovery_services_vault.recovery_services_vaults : k => one(v.monitoring) if v.monitoring != null && length(v.monitoring) > 0 }
}
output "recovery_services_vaults_name" {
  description = "Map of name values across all recovery_services_vaults, keyed the same as var.recovery_services_vaults"
  value       = { for k, v in azurerm_recovery_services_vault.recovery_services_vaults : k => v.name if v.name != null && length(v.name) > 0 }
}
output "recovery_services_vaults_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all recovery_services_vaults, keyed the same as var.recovery_services_vaults"
  value       = { for k, v in azurerm_recovery_services_vault.recovery_services_vaults : k => v.public_network_access_enabled if v.public_network_access_enabled != null }
}
output "recovery_services_vaults_resource_group_name" {
  description = "Map of resource_group_name values across all recovery_services_vaults, keyed the same as var.recovery_services_vaults"
  value       = { for k, v in azurerm_recovery_services_vault.recovery_services_vaults : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "recovery_services_vaults_sku" {
  description = "Map of sku values across all recovery_services_vaults, keyed the same as var.recovery_services_vaults"
  value       = { for k, v in azurerm_recovery_services_vault.recovery_services_vaults : k => v.sku if v.sku != null && length(v.sku) > 0 }
}
output "recovery_services_vaults_storage_mode_type" {
  description = "Map of storage_mode_type values across all recovery_services_vaults, keyed the same as var.recovery_services_vaults"
  value       = { for k, v in azurerm_recovery_services_vault.recovery_services_vaults : k => v.storage_mode_type if v.storage_mode_type != null && length(v.storage_mode_type) > 0 }
}
output "recovery_services_vaults_tags" {
  description = "Map of tags values across all recovery_services_vaults, keyed the same as var.recovery_services_vaults"
  value       = { for k, v in azurerm_recovery_services_vault.recovery_services_vaults : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

