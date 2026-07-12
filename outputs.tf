output "storage_account_network_ruleses_bypass" {
  description = "Map of bypass values across all storage_account_network_ruleses, keyed the same as var.storage_account_network_ruleses"
  value       = { for k, v in azurerm_storage_account_network_rules.storage_account_network_ruleses : k => v.bypass }
}
output "storage_account_network_ruleses_default_action" {
  description = "Map of default_action values across all storage_account_network_ruleses, keyed the same as var.storage_account_network_ruleses"
  value       = { for k, v in azurerm_storage_account_network_rules.storage_account_network_ruleses : k => v.default_action }
}
output "storage_account_network_ruleses_ip_rules" {
  description = "Map of ip_rules values across all storage_account_network_ruleses, keyed the same as var.storage_account_network_ruleses"
  value       = { for k, v in azurerm_storage_account_network_rules.storage_account_network_ruleses : k => v.ip_rules }
}
output "storage_account_network_ruleses_private_link_access" {
  description = "Map of private_link_access values across all storage_account_network_ruleses, keyed the same as var.storage_account_network_ruleses"
  value       = { for k, v in azurerm_storage_account_network_rules.storage_account_network_ruleses : k => v.private_link_access }
}
output "storage_account_network_ruleses_storage_account_id" {
  description = "Map of storage_account_id values across all storage_account_network_ruleses, keyed the same as var.storage_account_network_ruleses"
  value       = { for k, v in azurerm_storage_account_network_rules.storage_account_network_ruleses : k => v.storage_account_id }
}
output "storage_account_network_ruleses_virtual_network_subnet_ids" {
  description = "Map of virtual_network_subnet_ids values across all storage_account_network_ruleses, keyed the same as var.storage_account_network_ruleses"
  value       = { for k, v in azurerm_storage_account_network_rules.storage_account_network_ruleses : k => v.virtual_network_subnet_ids }
}

