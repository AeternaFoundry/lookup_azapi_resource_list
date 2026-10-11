output "resource_list_lookup_id" {
  description = "Map of id values across all resource_list_lookup, keyed the same as var.resource_list_lookup"
  value       = { for k, v in data.azapi_resource_list.resource_list_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "resource_list_lookup_headers" {
  description = "Map of headers values across all resource_list_lookup, keyed the same as var.resource_list_lookup"
  value       = { for k, v in data.azapi_resource_list.resource_list_lookup : k => v.headers if v.headers != null && length(v.headers) > 0 }
}
output "resource_list_lookup_output" {
  description = "Map of output values across all resource_list_lookup, keyed the same as var.resource_list_lookup"
  value       = { for k, v in data.azapi_resource_list.resource_list_lookup : k => v.output if v.output != null }
}
output "resource_list_lookup_parent_id" {
  description = "Map of parent_id values across all resource_list_lookup, keyed the same as var.resource_list_lookup"
  value       = { for k, v in data.azapi_resource_list.resource_list_lookup : k => v.parent_id if v.parent_id != null && length(v.parent_id) > 0 }
}
output "resource_list_lookup_query_parameters" {
  description = "Map of query_parameters values across all resource_list_lookup, keyed the same as var.resource_list_lookup"
  value       = { for k, v in data.azapi_resource_list.resource_list_lookup : k => v.query_parameters if v.query_parameters != null && length(v.query_parameters) > 0 }
}
output "resource_list_lookup_response_export_values" {
  description = "Map of response_export_values values across all resource_list_lookup, keyed the same as var.resource_list_lookup"
  value       = { for k, v in data.azapi_resource_list.resource_list_lookup : k => v.response_export_values if v.response_export_values != null }
}
output "resource_list_lookup_retry" {
  description = "Map of retry values across all resource_list_lookup, keyed the same as var.resource_list_lookup"
  value       = { for k, v in data.azapi_resource_list.resource_list_lookup : k => v.retry if v.retry != null && length(v.retry) > 0 }
}
output "resource_list_lookup_type" {
  description = "Map of type values across all resource_list_lookup, keyed the same as var.resource_list_lookup"
  value       = { for k, v in data.azapi_resource_list.resource_list_lookup : k => v.type if v.type != null && length(v.type) > 0 }
}

