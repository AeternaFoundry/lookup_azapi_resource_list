variable "resource_list_lookup" {
  description = <<EOT
Map of resource_list_lookup, attributes below
Required:
    - parent_id
    - type
Optional:
    - headers
    - query_parameters
    - response_export_values
    - retry
EOT

  type = map(object({
    parent_id              = string
    type                   = string
    headers                = optional(map(string))
    query_parameters       = optional(map(any))
    response_export_values = optional(any)
    retry = optional(object({
      error_message_regex  = list(string)
      interval_seconds     = optional(number)
      max_interval_seconds = optional(number)
      multiplier           = optional(number)
      randomization_factor = optional(number)
    }))
  }))
}

