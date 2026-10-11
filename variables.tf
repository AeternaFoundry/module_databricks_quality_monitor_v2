variable "quality_monitor_v2s" {
  description = <<EOT
Map of quality_monitor_v2s, attributes below
Required:
    - object_id
    - object_type
Optional:
    - provider_config
    - validity_check_configurations
EOT

  type = map(object({
    object_id   = string
    object_type = string
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
    validity_check_configurations = optional(list(object({
      name = optional(string)
      percent_null_validity_check = optional(object({
        column_names = optional(list(string))
        upper_bound  = optional(number)
      }))
      range_validity_check = optional(object({
        column_names = optional(list(string))
        lower_bound  = optional(number)
        upper_bound  = optional(number)
      }))
      uniqueness_validity_check = optional(object({
        column_names = optional(list(string))
      }))
    })))
  }))
}

