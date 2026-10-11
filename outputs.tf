output "vertex_ai_persistent_resources_id" {
  description = "Map of id values across all vertex_ai_persistent_resources, keyed the same as var.vertex_ai_persistent_resources except keys with no id are omitted"
  value       = { for k, v in google_vertex_ai_persistent_resource.vertex_ai_persistent_resources : k => v.id if v.id != null && length(v.id) > 0 }
}
output "vertex_ai_persistent_resources_create_time" {
  description = "Map of create_time values across all vertex_ai_persistent_resources, keyed the same as var.vertex_ai_persistent_resources except keys with no create_time are omitted"
  value       = { for k, v in google_vertex_ai_persistent_resource.vertex_ai_persistent_resources : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "vertex_ai_persistent_resources_deletion_policy" {
  description = "Map of deletion_policy values across all vertex_ai_persistent_resources, keyed the same as var.vertex_ai_persistent_resources except keys with no deletion_policy are omitted"
  value       = { for k, v in google_vertex_ai_persistent_resource.vertex_ai_persistent_resources : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "vertex_ai_persistent_resources_display_name" {
  description = "Map of display_name values across all vertex_ai_persistent_resources, keyed the same as var.vertex_ai_persistent_resources except keys with no display_name are omitted"
  value       = { for k, v in google_vertex_ai_persistent_resource.vertex_ai_persistent_resources : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "vertex_ai_persistent_resources_effective_labels" {
  description = "Map of effective_labels values across all vertex_ai_persistent_resources, keyed the same as var.vertex_ai_persistent_resources except keys with no effective_labels are omitted"
  value       = { for k, v in google_vertex_ai_persistent_resource.vertex_ai_persistent_resources : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "vertex_ai_persistent_resources_encryption_spec" {
  description = "Map of encryption_spec values across all vertex_ai_persistent_resources, keyed the same as var.vertex_ai_persistent_resources except keys with no encryption_spec are omitted"
  value       = { for k, v in google_vertex_ai_persistent_resource.vertex_ai_persistent_resources : k => one(v.encryption_spec) if v.encryption_spec != null && length(v.encryption_spec) > 0 }
}
output "vertex_ai_persistent_resources_error" {
  description = "Map of error values across all vertex_ai_persistent_resources, keyed the same as var.vertex_ai_persistent_resources except keys with no error are omitted"
  value       = { for k, v in google_vertex_ai_persistent_resource.vertex_ai_persistent_resources : k => v.error if v.error != null && length(v.error) > 0 }
}
output "vertex_ai_persistent_resources_labels" {
  description = "Map of labels values across all vertex_ai_persistent_resources, keyed the same as var.vertex_ai_persistent_resources except keys with no labels are omitted"
  value       = { for k, v in google_vertex_ai_persistent_resource.vertex_ai_persistent_resources : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "vertex_ai_persistent_resources_location" {
  description = "Map of location values across all vertex_ai_persistent_resources, keyed the same as var.vertex_ai_persistent_resources except keys with no location are omitted"
  value       = { for k, v in google_vertex_ai_persistent_resource.vertex_ai_persistent_resources : k => v.location if v.location != null && length(v.location) > 0 }
}
output "vertex_ai_persistent_resources_name" {
  description = "Map of name values across all vertex_ai_persistent_resources, keyed the same as var.vertex_ai_persistent_resources except keys with no name are omitted"
  value       = { for k, v in google_vertex_ai_persistent_resource.vertex_ai_persistent_resources : k => v.name if v.name != null && length(v.name) > 0 }
}
output "vertex_ai_persistent_resources_network" {
  description = "Map of network values across all vertex_ai_persistent_resources, keyed the same as var.vertex_ai_persistent_resources except keys with no network are omitted"
  value       = { for k, v in google_vertex_ai_persistent_resource.vertex_ai_persistent_resources : k => v.network if v.network != null && length(v.network) > 0 }
}
output "vertex_ai_persistent_resources_project" {
  description = "Map of project values across all vertex_ai_persistent_resources, keyed the same as var.vertex_ai_persistent_resources except keys with no project are omitted"
  value       = { for k, v in google_vertex_ai_persistent_resource.vertex_ai_persistent_resources : k => v.project if v.project != null && length(v.project) > 0 }
}
output "vertex_ai_persistent_resources_psc_interface_config" {
  description = "Map of psc_interface_config values across all vertex_ai_persistent_resources, keyed the same as var.vertex_ai_persistent_resources except keys with no psc_interface_config are omitted"
  value       = { for k, v in google_vertex_ai_persistent_resource.vertex_ai_persistent_resources : k => one(v.psc_interface_config) if v.psc_interface_config != null && length(v.psc_interface_config) > 0 }
}
output "vertex_ai_persistent_resources_reserved_ip_ranges" {
  description = "Map of reserved_ip_ranges values across all vertex_ai_persistent_resources, keyed the same as var.vertex_ai_persistent_resources except keys with no reserved_ip_ranges are omitted"
  value       = { for k, v in google_vertex_ai_persistent_resource.vertex_ai_persistent_resources : k => v.reserved_ip_ranges if v.reserved_ip_ranges != null && length(v.reserved_ip_ranges) > 0 }
}
output "vertex_ai_persistent_resources_resource_pools" {
  description = "Map of resource_pools values across all vertex_ai_persistent_resources, keyed the same as var.vertex_ai_persistent_resources except keys with no resource_pools are omitted"
  value       = { for k, v in google_vertex_ai_persistent_resource.vertex_ai_persistent_resources : k => v.resource_pools if v.resource_pools != null && length(v.resource_pools) > 0 }
}
output "vertex_ai_persistent_resources_resource_runtime" {
  description = "Map of resource_runtime values across all vertex_ai_persistent_resources, keyed the same as var.vertex_ai_persistent_resources except keys with no resource_runtime are omitted"
  value       = { for k, v in google_vertex_ai_persistent_resource.vertex_ai_persistent_resources : k => v.resource_runtime if v.resource_runtime != null && length(v.resource_runtime) > 0 }
}
output "vertex_ai_persistent_resources_resource_runtime_spec" {
  description = "Map of resource_runtime_spec values across all vertex_ai_persistent_resources, keyed the same as var.vertex_ai_persistent_resources except keys with no resource_runtime_spec are omitted"
  value       = { for k, v in google_vertex_ai_persistent_resource.vertex_ai_persistent_resources : k => one(v.resource_runtime_spec) if v.resource_runtime_spec != null && length(v.resource_runtime_spec) > 0 }
}
output "vertex_ai_persistent_resources_satisfies_pzi" {
  description = "Map of satisfies_pzi values across all vertex_ai_persistent_resources, keyed the same as var.vertex_ai_persistent_resources except keys with no satisfies_pzi are omitted"
  value       = { for k, v in google_vertex_ai_persistent_resource.vertex_ai_persistent_resources : k => v.satisfies_pzi if v.satisfies_pzi != null }
}
output "vertex_ai_persistent_resources_satisfies_pzs" {
  description = "Map of satisfies_pzs values across all vertex_ai_persistent_resources, keyed the same as var.vertex_ai_persistent_resources except keys with no satisfies_pzs are omitted"
  value       = { for k, v in google_vertex_ai_persistent_resource.vertex_ai_persistent_resources : k => v.satisfies_pzs if v.satisfies_pzs != null }
}
output "vertex_ai_persistent_resources_start_time" {
  description = "Map of start_time values across all vertex_ai_persistent_resources, keyed the same as var.vertex_ai_persistent_resources except keys with no start_time are omitted"
  value       = { for k, v in google_vertex_ai_persistent_resource.vertex_ai_persistent_resources : k => v.start_time if v.start_time != null && length(v.start_time) > 0 }
}
output "vertex_ai_persistent_resources_state" {
  description = "Map of state values across all vertex_ai_persistent_resources, keyed the same as var.vertex_ai_persistent_resources except keys with no state are omitted"
  value       = { for k, v in google_vertex_ai_persistent_resource.vertex_ai_persistent_resources : k => v.state if v.state != null && length(v.state) > 0 }
}
output "vertex_ai_persistent_resources_terraform_labels" {
  description = "Map of terraform_labels values across all vertex_ai_persistent_resources, keyed the same as var.vertex_ai_persistent_resources except keys with no terraform_labels are omitted"
  value       = { for k, v in google_vertex_ai_persistent_resource.vertex_ai_persistent_resources : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "vertex_ai_persistent_resources_update_time" {
  description = "Map of update_time values across all vertex_ai_persistent_resources, keyed the same as var.vertex_ai_persistent_resources except keys with no update_time are omitted"
  value       = { for k, v in google_vertex_ai_persistent_resource.vertex_ai_persistent_resources : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

