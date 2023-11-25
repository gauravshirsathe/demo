
variable "subnet_configurations" {
  description = "A list of subnet configurations"
  type = list(object({
    compartment_id      = string
    availability_domain = string
    cidr_block          = string
    display_name        = string
    defined_tags        = map(string)
    vcn_key             = string
  }))
}

