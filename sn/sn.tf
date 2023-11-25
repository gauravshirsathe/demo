resource "oci_core_subnet" "subnet" {
  for_each = toset(var.subnet_configurations)

  compartment_id      = each.value.compartment_id
  availability_domain = each.value.availability_domain
# vcn_id              = try(element(module.vcn.vcn_ids, each.value.vcn_key), null)
 vcn_id              = lookup(module.vcn.vcn_id, each.value.vcn_key, null)
#  vcn_id              = module.vcn[each.value.display_name].vcn_id
  cidr_block          = each.value.cidr_block
  display_name        = each.value.display_name
  defined_tags        = each.value.defined_tags
}
