output "subnet_ids" {
  description = "The IDs of the created subnets."
  value       = oci_core_subnet.subnet[*].id
}

output "subnet_cidr_blocks" {
  description = "The CIDR blocks of the created subnets."
  value       = oci_core_subnet.subnet[*].cidr_block
}

output "subnet_display_names" {
  description = "The display names of the created subnets."
  value       = oci_core_subnet.subnet[*].display_name
}

output "subnet_availability_domains" {
  description = "The availability domains of the created subnets."
  value       = oci_core_subnet.subnet[*].availability_domain
}

