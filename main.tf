data "oci_nosql_indexes" "nosql_indexes_lookup" {
  for_each = var.nosql_indexes_lookup

  table_name_or_id = each.value.table_name_or_id
  compartment_id   = each.value.compartment_id
  name             = each.value.name
  state            = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

