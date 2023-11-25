module "vcn" {
  source             = "/DELETE/PROD/vcn"
  vcn_configurations = var.vcn_configurations
}

module "subnet" {
  source                = "/DELETE/PROD/sn"
  subnet_configurations = var.subnet_configurations
#  vcn_id                = lookup(module.vcn.vcn_ids, each.value.vcn_key, null)
}

