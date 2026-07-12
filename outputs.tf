output "recovery_services_vaults_classic_vmware_replication_enabled" {
  description = "Map of classic_vmware_replication_enabled values across all recovery_services_vaults, keyed the same as var.recovery_services_vaults"
  value       = { for k, v in azurerm_recovery_services_vault.recovery_services_vaults : k => v.classic_vmware_replication_enabled }
}
output "recovery_services_vaults_cross_region_restore_enabled" {
  description = "Map of cross_region_restore_enabled values across all recovery_services_vaults, keyed the same as var.recovery_services_vaults"
  value       = { for k, v in azurerm_recovery_services_vault.recovery_services_vaults : k => v.cross_region_restore_enabled }
}
output "recovery_services_vaults_encryption" {
  description = "Map of encryption values across all recovery_services_vaults, keyed the same as var.recovery_services_vaults"
  value       = { for k, v in azurerm_recovery_services_vault.recovery_services_vaults : k => v.encryption }
}
output "recovery_services_vaults_identity" {
  description = "Map of identity values across all recovery_services_vaults, keyed the same as var.recovery_services_vaults"
  value       = { for k, v in azurerm_recovery_services_vault.recovery_services_vaults : k => v.identity }
}
output "recovery_services_vaults_immutability" {
  description = "Map of immutability values across all recovery_services_vaults, keyed the same as var.recovery_services_vaults"
  value       = { for k, v in azurerm_recovery_services_vault.recovery_services_vaults : k => v.immutability }
}
output "recovery_services_vaults_location" {
  description = "Map of location values across all recovery_services_vaults, keyed the same as var.recovery_services_vaults"
  value       = { for k, v in azurerm_recovery_services_vault.recovery_services_vaults : k => v.location }
}
output "recovery_services_vaults_monitoring" {
  description = "Map of monitoring values across all recovery_services_vaults, keyed the same as var.recovery_services_vaults"
  value       = { for k, v in azurerm_recovery_services_vault.recovery_services_vaults : k => v.monitoring }
}
output "recovery_services_vaults_name" {
  description = "Map of name values across all recovery_services_vaults, keyed the same as var.recovery_services_vaults"
  value       = { for k, v in azurerm_recovery_services_vault.recovery_services_vaults : k => v.name }
}
output "recovery_services_vaults_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all recovery_services_vaults, keyed the same as var.recovery_services_vaults"
  value       = { for k, v in azurerm_recovery_services_vault.recovery_services_vaults : k => v.public_network_access_enabled }
}
output "recovery_services_vaults_resource_group_name" {
  description = "Map of resource_group_name values across all recovery_services_vaults, keyed the same as var.recovery_services_vaults"
  value       = { for k, v in azurerm_recovery_services_vault.recovery_services_vaults : k => v.resource_group_name }
}
output "recovery_services_vaults_sku" {
  description = "Map of sku values across all recovery_services_vaults, keyed the same as var.recovery_services_vaults"
  value       = { for k, v in azurerm_recovery_services_vault.recovery_services_vaults : k => v.sku }
}
output "recovery_services_vaults_soft_delete_enabled" {
  description = "Map of soft_delete_enabled values across all recovery_services_vaults, keyed the same as var.recovery_services_vaults"
  value       = { for k, v in azurerm_recovery_services_vault.recovery_services_vaults : k => v.soft_delete_enabled }
}
output "recovery_services_vaults_storage_mode_type" {
  description = "Map of storage_mode_type values across all recovery_services_vaults, keyed the same as var.recovery_services_vaults"
  value       = { for k, v in azurerm_recovery_services_vault.recovery_services_vaults : k => v.storage_mode_type }
}
output "recovery_services_vaults_tags" {
  description = "Map of tags values across all recovery_services_vaults, keyed the same as var.recovery_services_vaults"
  value       = { for k, v in azurerm_recovery_services_vault.recovery_services_vaults : k => v.tags }
}

