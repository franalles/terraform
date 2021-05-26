variable "compartment_id" {
  description = "OCID from your tenancy page"
  type        = string
}
variable "region" {
  description = "region where you have OCI tenancy"
  type        = string
  default     = "sa-santiago-1"
}

variable "tenancy_ocid"{}
variable "user_ocid"{}
variable "fingerprint"{}
variable "private_key_path"{}
variable "ssh_public_key_file"{}