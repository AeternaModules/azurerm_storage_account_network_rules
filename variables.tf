variable "storage_account_network_rules" {
  description = <<EOT
Map of storage_account_network_rules, attributes below
Required:
    - default_action
    - storage_account_id
Optional:
    - bypass
    - ip_rules
    - virtual_network_subnet_ids
    - private_link_access (block):
        - endpoint_resource_id (required)
        - endpoint_tenant_id (optional)
EOT

  type = map(object({
    default_action             = string
    storage_account_id         = string
    bypass                     = optional(set(string))
    ip_rules                   = optional(set(string))
    virtual_network_subnet_ids = optional(set(string))
    private_link_access = optional(list(object({
      endpoint_resource_id = string
      endpoint_tenant_id   = optional(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.storage_account_network_rules : (
        v.private_link_access == null || alltrue([for item in v.private_link_access : (item.endpoint_tenant_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", item.endpoint_tenant_id))))])
      )
    ])
    error_message = "must be a valid UUID"
  }
  # Note: 10 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

