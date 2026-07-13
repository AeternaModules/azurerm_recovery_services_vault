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
    soft_delete_enabled                = optional(bool)
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
  # --- Unconfirmed validation candidates, derived from azurerm_recovery_services_vault's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    validate.RecoveryServicesVaultName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: encryption.key_id
  #   source:    [from keyvault.ValidateNestedItemID] !ok
  # path: encryption.key_id
  #   source:    [from keyvault.ValidateNestedItemID] err != nil
  # path: encryption.user_assigned_identity_id
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: encryption.user_assigned_identity_id
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
  # path: identity.type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
  # path: immutability
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
  # path: sku
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: storage_mode_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

