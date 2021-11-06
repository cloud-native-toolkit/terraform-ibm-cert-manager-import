module "cert-manager" {
  source = "github.com/cloud-native-toolkit/terraform-ibm-cert-manager"

  resource_group_name = module.resource_group.name
  region = var.region
  provision = true
  private_endpoint = false
  kms_private_endpoint = true
  kms_enabled = false
}
