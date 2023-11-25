#output "vcn_ids" {
#  value = oci_core_vcn.vcn[*].id
#}

#output "vcn_cidr_blocks" {
#  value = oci_core_vcn.vcn[*].cidr_block
#}

#output "vcn_display_names" {
#  value = oci_core_vcn.vcn[*].display_name
#}

output "vcn_id" {
  description = "The IDs of the created VCNS."
  value      = { for k, v in oci_core_vcn.vcn : k => v.id }
}

output "vcn_cidr_blocks" {
  description = "The CIDR blocks of the created VCNS."
  value      = { for k, v in oci_core_vcn.vcn : k => v.cidr_block }
}

output "vcn_display_names" {
  description = "The display names of the created VCNS."
  value      = { for k, v in oci_core_vcn.vcn : k => v.display_name }
}

