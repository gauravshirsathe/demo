resource "oci_core_vcn" "vcn" {
  for_each = tomap(var.vcn_configurations)
  compartment_id = each.value.compartment_id
  cidr_block    = each.value.cidr_block
  display_name  = each.value.display_name
  defined_tags  = each.value.defined_tags
}
