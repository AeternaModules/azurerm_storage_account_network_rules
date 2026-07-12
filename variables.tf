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
  # --- Unconfirmed validation candidates, derived from azurerm_storage_account_network_rules's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] !ok
  # path: storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] err != nil
  # path: bypass[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: ip_rules[*]
  #   source:    [from validate.StorageAccountIpRule] !regexp.MustCompile(`^([0-9]{1,3}\.){3}[0-9]{1,3}(/([0-9]|[1-2][0-9]|30))?$`).MatchString(value)
  # path: ip_rules[*]
  #   source:    [from validate.StorageAccountIpRule] (firstIPPart == "10") || (firstIPPart == "172" && secondIPPart >= 16 && secondIPPart <= 31) || (firstIPPart == "192" && secondIPPart == 168)
  # path: virtual_network_subnet_ids[*]
  #   source:    [from azure.ValidateResourceID] !ok
  # path: virtual_network_subnet_ids[*]
  #   source:    [from azure.ValidateResourceID] err != nil
  # path: default_action
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: private_link_access.endpoint_resource_id
  #   source:    [from azure.ValidateResourceID] !ok
  # path: private_link_access.endpoint_resource_id
  #   source:    [from azure.ValidateResourceID] err != nil
  # path: private_link_access.endpoint_tenant_id
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
}

