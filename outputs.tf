output "recovery_services_vaults" {
  description = "All recovery_services_vault resources"
  value       = azurerm_recovery_services_vault.recovery_services_vaults
}
output "recovery_services_vaults_classic_vmware_replication_enabled" {
  description = "List of classic_vmware_replication_enabled values across all recovery_services_vaults"
  value       = [for k, v in azurerm_recovery_services_vault.recovery_services_vaults : v.classic_vmware_replication_enabled]
}
output "recovery_services_vaults_cross_region_restore_enabled" {
  description = "List of cross_region_restore_enabled values across all recovery_services_vaults"
  value       = [for k, v in azurerm_recovery_services_vault.recovery_services_vaults : v.cross_region_restore_enabled]
}
output "recovery_services_vaults_encryption" {
  description = "List of encryption values across all recovery_services_vaults"
  value       = [for k, v in azurerm_recovery_services_vault.recovery_services_vaults : v.encryption]
}
output "recovery_services_vaults_identity" {
  description = "List of identity values across all recovery_services_vaults"
  value       = [for k, v in azurerm_recovery_services_vault.recovery_services_vaults : v.identity]
}
output "recovery_services_vaults_immutability" {
  description = "List of immutability values across all recovery_services_vaults"
  value       = [for k, v in azurerm_recovery_services_vault.recovery_services_vaults : v.immutability]
}
output "recovery_services_vaults_location" {
  description = "List of location values across all recovery_services_vaults"
  value       = [for k, v in azurerm_recovery_services_vault.recovery_services_vaults : v.location]
}
output "recovery_services_vaults_monitoring" {
  description = "List of monitoring values across all recovery_services_vaults"
  value       = [for k, v in azurerm_recovery_services_vault.recovery_services_vaults : v.monitoring]
}
output "recovery_services_vaults_name" {
  description = "List of name values across all recovery_services_vaults"
  value       = [for k, v in azurerm_recovery_services_vault.recovery_services_vaults : v.name]
}
output "recovery_services_vaults_public_network_access_enabled" {
  description = "List of public_network_access_enabled values across all recovery_services_vaults"
  value       = [for k, v in azurerm_recovery_services_vault.recovery_services_vaults : v.public_network_access_enabled]
}
output "recovery_services_vaults_resource_group_name" {
  description = "List of resource_group_name values across all recovery_services_vaults"
  value       = [for k, v in azurerm_recovery_services_vault.recovery_services_vaults : v.resource_group_name]
}
output "recovery_services_vaults_sku" {
  description = "List of sku values across all recovery_services_vaults"
  value       = [for k, v in azurerm_recovery_services_vault.recovery_services_vaults : v.sku]
}
output "recovery_services_vaults_soft_delete_enabled" {
  description = "List of soft_delete_enabled values across all recovery_services_vaults"
  value       = [for k, v in azurerm_recovery_services_vault.recovery_services_vaults : v.soft_delete_enabled]
}
output "recovery_services_vaults_storage_mode_type" {
  description = "List of storage_mode_type values across all recovery_services_vaults"
  value       = [for k, v in azurerm_recovery_services_vault.recovery_services_vaults : v.storage_mode_type]
}
output "recovery_services_vaults_tags" {
  description = "List of tags values across all recovery_services_vaults"
  value       = [for k, v in azurerm_recovery_services_vault.recovery_services_vaults : v.tags]
}

