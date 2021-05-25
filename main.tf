terraform {
  required_providers {
    oci = {
      source = "hashicorp/oci"
    }
  }
}

provider "oci" {
  region              = "sa-santiago-1"
  auth                = "SecurityToken"
  config_file_profile = "learn-terraform"
}

/*
resource "oci_core_vcn" "internal" {
  dns_label      = "internal"
  cidr_block     = "172.16.0.0/20"
  compartment_id = "ocid1.tenancy.oc1..aaaaaaaaiq4zp55favmeitmdd4c3lggs57iswzowvwa5k6566whocrhxgbsa"
  display_name   = "My internal VCN"
}
*/

resource "oci_core_subnet" "dev" {
  vcn_id                      = oci_core_vcn.internal.id
  cidr_block                  = "172.16.0.0/24"
  compartment_id = "ocid1.tenancy.oc1..aaaaaaaaiq4zp55favmeitmdd4c3lggs57iswzowvwa5k6566whocrhxgbsa"
  display_name                = "Dev subnet 1"
  prohibit_public_ip_on_vnic  = true
  dns_label                   = "dev"
}