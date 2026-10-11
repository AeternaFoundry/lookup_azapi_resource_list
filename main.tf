data "azapi_resource_list" "resource_list_lookup" {
  for_each = var.resource_list_lookup

  parent_id              = each.value.parent_id
  type                   = each.value.type
  headers                = each.value.headers
  query_parameters       = each.value.query_parameters
  response_export_values = each.value.response_export_values
  retry                  = each.value.retry
}

