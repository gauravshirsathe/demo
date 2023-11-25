tenancy_ocid     = "ocid1.tenancy.oc1..aaaaaaaavq7mli6vqbhibwzbkywghhu7v233cjudlejd5jgyqwsdsuen77ba"
user_ocid        = "ocid1.user.oc1..aaaaaaaakt5v4gpp36q734qbqtcv4qhkn2nlecjtj6vw6hzdzipplwxn3aqq"
fingerprint      = "8a:1b:81:cf:5a:d6:72:34:f7:f6:67:40:e1:04:ca:fc"
private_key_path = "/INFRA/TGE/private_key"
prod_region      = "us-ashburn-1"


vcn_configurations = {
  vcn1 = {
    compartment_id = "compartment_id_1"
    cidr_block     = "10.0.0.0/16"
    display_name   = "VCN 1"
    defined_tags   = { "tag-key" = "tag-value" }
  },
  vcn2 = {
    compartment_id = "compartment_id_2"
    cidr_block     = "10.1.0.0/16"
    display_name   = "VCN 2"
    defined_tags   = { "tag-key" = "tag-value" }
  },
  # Add more VCN configurations as needed
}



subnet_configurations = [
  {
    compartment_id      = "compartment_id_1"
    availability_domain = "AD-1"
    cidr_block          = "10.0.0.0/24"
    display_name        = "Subnet 1"
    defined_tags        = { "tag-key" = "tag-value" }
    vcn_key             = "vcn1" # Assign Subnet 1 to VCN 1
  },
  {
    compartment_id      = "compartment_id_1"
    availability_domain = "AD-2"
    cidr_block          = "10.0.1.0/24"
    display_name        = "Subnet 2"
    defined_tags        = { "tag-key" = "tag-value" }
    vcn_key             = "vcn1" # Assign Subnet 2 to VCN 1
  },
  {
    compartment_id      = "compartment_id_2"
    availability_domain = "AD-1"
    cidr_block          = "10.1.0.0/24"
    display_name        = "Subnet 1"
    defined_tags        = { "tag-key" = "tag-value" }
    vcn_key             = "vcn2" # Assign Subnet 1 to VCN 2
  },
  {
    compartment_id      = "compartment_id_2"
    availability_domain = "AD-2"
    cidr_block          = "10.1.1.0/24"
    display_name        = "Subnet 2"
    defined_tags        = { "tag-key" = "tag-value" }
    vcn_key             = "vcn2" # Assign Subnet 2 to VCN 2
  },
  # Add more subnet configurations as needed
]
