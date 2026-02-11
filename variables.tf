variable "recovery_services_vaults" {
  description = <<EOT
Map of recovery_services_vaults, attributes below
Required:
    - location
    - name
    - resource_group_name
    - sku
Optional:
    - classic_vmware_replication_enabled
    - cross_region_restore_enabled
    - immutability
    - public_network_access_enabled
    - soft_delete_enabled
    - storage_mode_type
    - tags
    - encryption (block):
        - infrastructure_encryption_enabled (required)
        - key_id (required)
        - use_system_assigned_identity (optional)
        - user_assigned_identity_id (optional)
    - identity (block):
        - identity_ids (optional)
        - type (required)
    - monitoring (block):
        - alerts_for_all_job_failures_enabled (optional)
        - alerts_for_critical_operation_failures_enabled (optional)
EOT

  type = map(object({
    location                           = string
    name                               = string
    resource_group_name                = string
    sku                                = string
    classic_vmware_replication_enabled = optional(bool)
    cross_region_restore_enabled       = optional(bool) # Default: false
    immutability                       = optional(string)
    public_network_access_enabled      = optional(bool)   # Default: true
    soft_delete_enabled                = optional(bool)   # Default: true
    storage_mode_type                  = optional(string) # Default: "GeoRedundant"
    tags                               = optional(map(string))
    encryption = optional(object({
      infrastructure_encryption_enabled = bool
      key_id                            = string
      use_system_assigned_identity      = optional(bool) # Default: true
      user_assigned_identity_id         = optional(string)
    }))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    monitoring = optional(object({
      alerts_for_all_job_failures_enabled            = optional(bool) # Default: true
      alerts_for_critical_operation_failures_enabled = optional(bool) # Default: true
    }))
  }))
}

