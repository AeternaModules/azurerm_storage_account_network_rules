output "storage_account_network_ruleses" {
  description = "All storage_account_network_rules resources"
  value       = azurerm_storage_account_network_rules.storage_account_network_ruleses
}
output "storage_account_network_ruleses_bypass" {
  description = "List of bypass values across all storage_account_network_ruleses"
  value       = [for k, v in azurerm_storage_account_network_rules.storage_account_network_ruleses : v.bypass]
}
output "storage_account_network_ruleses_default_action" {
  description = "List of default_action values across all storage_account_network_ruleses"
  value       = [for k, v in azurerm_storage_account_network_rules.storage_account_network_ruleses : v.default_action]
}
output "storage_account_network_ruleses_ip_rules" {
  description = "List of ip_rules values across all storage_account_network_ruleses"
  value       = [for k, v in azurerm_storage_account_network_rules.storage_account_network_ruleses : v.ip_rules]
}
output "storage_account_network_ruleses_private_link_access" {
  description = "List of private_link_access values across all storage_account_network_ruleses"
  value       = [for k, v in azurerm_storage_account_network_rules.storage_account_network_ruleses : v.private_link_access]
}
output "storage_account_network_ruleses_storage_account_id" {
  description = "List of storage_account_id values across all storage_account_network_ruleses"
  value       = [for k, v in azurerm_storage_account_network_rules.storage_account_network_ruleses : v.storage_account_id]
}
output "storage_account_network_ruleses_virtual_network_subnet_ids" {
  description = "List of virtual_network_subnet_ids values across all storage_account_network_ruleses"
  value       = [for k, v in azurerm_storage_account_network_rules.storage_account_network_ruleses : v.virtual_network_subnet_ids]
}

