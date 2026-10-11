variable "nosql_indexes_lookup" {
  description = <<EOT
Map of nosql_indexes_lookup, attributes below
Required:
    - table_name_or_id
Optional:
    - compartment_id
    - name
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    table_name_or_id = string
    compartment_id   = optional(string)
    name             = optional(string)
    state            = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

