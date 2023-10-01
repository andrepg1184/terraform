locals {
  ip_filepath = "ips.json"

  common_tags = {
    Service   = "Curso Terraform"
    ManagedBy = "Terraform"
    Owner     = "André leite"
  }
}