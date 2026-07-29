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
        - alerts_for_all_failover_issues_enabled (optional)
        - alerts_for_all_job_failures_enabled (optional)
        - alerts_for_all_replication_issues_enabled (optional)
        - alerts_for_critical_operation_failures_enabled (optional)
        - email_notifications_for_site_recovery_enabled (optional)
EOT

  type = map(object({
    location                           = string
    name                               = string
    resource_group_name                = string
    sku                                = string
    classic_vmware_replication_enabled = optional(bool)
    cross_region_restore_enabled       = optional(bool)
    immutability                       = optional(string)
    public_network_access_enabled      = optional(bool)
    storage_mode_type                  = optional(string)
    tags                               = optional(map(string))
    encryption = optional(object({
      infrastructure_encryption_enabled = bool
      key_id                            = string
      use_system_assigned_identity      = optional(bool)
      user_assigned_identity_id         = optional(string)
    }))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    monitoring = optional(object({
      alerts_for_all_failover_issues_enabled         = optional(bool)
      alerts_for_all_job_failures_enabled            = optional(bool)
      alerts_for_all_replication_issues_enabled      = optional(bool)
      alerts_for_critical_operation_failures_enabled = optional(bool)
      email_notifications_for_site_recovery_enabled  = optional(bool)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.recovery_services_vaults : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.recovery_services_vaults : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.recovery_services_vaults : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.recovery_services_vaults : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 16 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

