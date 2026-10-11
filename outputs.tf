output "nosql_indexes_lookup_id" {
  description = "Map of id values across all nosql_indexes_lookup, keyed the same as var.nosql_indexes_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_nosql_indexes.nosql_indexes_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "nosql_indexes_lookup_compartment_id" {
  description = "Map of compartment_id values across all nosql_indexes_lookup, keyed the same as var.nosql_indexes_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_nosql_indexes.nosql_indexes_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "nosql_indexes_lookup_filter" {
  description = "Map of filter values across all nosql_indexes_lookup, keyed the same as var.nosql_indexes_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_nosql_indexes.nosql_indexes_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "nosql_indexes_lookup_index_collection" {
  description = "Map of index_collection values across all nosql_indexes_lookup, keyed the same as var.nosql_indexes_lookup except keys with no index_collection are omitted"
  value       = { for k, v in data.oci_nosql_indexes.nosql_indexes_lookup : k => v.index_collection if v.index_collection != null && length(v.index_collection) > 0 }
}
output "nosql_indexes_lookup_name" {
  description = "Map of name values across all nosql_indexes_lookup, keyed the same as var.nosql_indexes_lookup except keys with no name are omitted"
  value       = { for k, v in data.oci_nosql_indexes.nosql_indexes_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "nosql_indexes_lookup_state" {
  description = "Map of state values across all nosql_indexes_lookup, keyed the same as var.nosql_indexes_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_nosql_indexes.nosql_indexes_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}
output "nosql_indexes_lookup_table_name_or_id" {
  description = "Map of table_name_or_id values across all nosql_indexes_lookup, keyed the same as var.nosql_indexes_lookup except keys with no table_name_or_id are omitted"
  value       = { for k, v in data.oci_nosql_indexes.nosql_indexes_lookup : k => v.table_name_or_id if v.table_name_or_id != null && length(v.table_name_or_id) > 0 }
}

