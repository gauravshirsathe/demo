variable "tenancy_ocid" {
  type        = string
  description = "The OCID of tenancy"
}

variable "user_ocid" {
  type        = string
  description = "The OCID of User"
}

variable "fingerprint" {
  type        = string
  description = "The fingerprint of User"
}

variable "private_key_path" {
  type        = string
  description = "The private_key_path of Key"
}

variable "prod_region" {
  type        = string
  description = "The OCI region for Prod Env"
}

variable "vcn_configurations" {
  description = "A list of VCN configurations"
  type = map(object({
    compartment_id = string
    cidr_block     = string
    display_name   = string
    defined_tags   = map(string)
  }))
}

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
