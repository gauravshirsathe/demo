#output "vcn_ids" {
#  value = module.vcn.vcn_ids
#}
output "vcn_ids" {
  description = "The IDs of the created VCNS."
  value       = { for k, v in module.vcn : k => v.id }
}

output "vcn_cidr_blocks" {
  value = module.vcn.vcn_cidr_blocks
}

output "vcn_display_names" {
  value = module.vcn.vcn_display_names
}

output "subnet_ids" {
  description = "The IDs of the created subnets."
  value       = module.subnet.subnet_ids
}

output "subnet_cidr_blocks" {
  description = "The CIDR blocks of the created subnets."
  value       = module.subnet.subnet_cidr_blocks
}

output "subnet_display_names" {
  description = "The display names of the created subnets."
  value       = module.subnet.subnet_display_names
}

output "subnet_availability_domains" {
  description = "The availability domains of the created subnets."
  value       = module.subnet.subnet_availability_domains
}

