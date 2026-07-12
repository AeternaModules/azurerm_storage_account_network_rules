output "storage_account_network_rules_id" {
  description = "Map of id values across all storage_account_network_rules, keyed the same as var.storage_account_network_rules"
  value       = { for k, v in azurerm_storage_account_network_rules.storage_account_network_rules : k => v.id }
}
output "storage_account_network_rules_bypass" {
  description = "Map of bypass values across all storage_account_network_rules, keyed the same as var.storage_account_network_rules"
  value       = { for k, v in azurerm_storage_account_network_rules.storage_account_network_rules : k => v.bypass }
}
output "storage_account_network_rules_default_action" {
  description = "Map of default_action values across all storage_account_network_rules, keyed the same as var.storage_account_network_rules"
  value       = { for k, v in azurerm_storage_account_network_rules.storage_account_network_rules : k => v.default_action }
}
output "storage_account_network_rules_ip_rules" {
  description = "Map of ip_rules values across all storage_account_network_rules, keyed the same as var.storage_account_network_rules"
  value       = { for k, v in azurerm_storage_account_network_rules.storage_account_network_rules : k => v.ip_rules }
}
output "storage_account_network_rules_private_link_access" {
  description = "Map of private_link_access values across all storage_account_network_rules, keyed the same as var.storage_account_network_rules"
  value       = { for k, v in azurerm_storage_account_network_rules.storage_account_network_rules : k => v.private_link_access }
}
output "storage_account_network_rules_storage_account_id" {
  description = "Map of storage_account_id values across all storage_account_network_rules, keyed the same as var.storage_account_network_rules"
  value       = { for k, v in azurerm_storage_account_network_rules.storage_account_network_rules : k => v.storage_account_id }
}
output "storage_account_network_rules_virtual_network_subnet_ids" {
  description = "Map of virtual_network_subnet_ids values across all storage_account_network_rules, keyed the same as var.storage_account_network_rules"
  value       = { for k, v in azurerm_storage_account_network_rules.storage_account_network_rules : k => v.virtual_network_subnet_ids }
}

