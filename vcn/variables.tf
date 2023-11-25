
variable "vcn_configurations" {
  description = "A map of VCN configurations"
  type        = map(object({
    compartment_id = string
    cidr_block    = string
    display_name  = string
    defined_tags  = map(string)
  }))
}
