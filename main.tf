resource "databricks_quality_monitor_v2" "quality_monitor_v2s" {
  for_each = var.quality_monitor_v2s

  object_id                     = each.value.object_id
  object_type                   = each.value.object_type
  provider_config               = each.value.provider_config
  validity_check_configurations = each.value.validity_check_configurations
}

