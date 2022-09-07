# IBM Certificate Manager Certificate module

Module to upload a certificate and private key into IBM Certificate Manager and/or retrieve the certificate and private key to provide as output. If the **provision** variable is `true`, then **cert** and **private_key** are required and they will be uploaded as a new certificate in Certificate Manager. If **provision** is `false`, then the **cert** and **private_key** values will be retrieved from Certificate Manager.

## Software dependencies

The module depends on the following software components:

### Command-line tools

- terraform - v14

### Terraform providers

- IBM Cloud provider >= 1.22.0

## Module dependencies

This module makes use of the output from other modules:

- Certificate Manager - github.com/cloud-native-toolkit/terraform-ibm-cert-manager
- Certificate - github.com/cloud-native-toolkit/terraform-util-sealed-secret-cert.git

## Example usage

[Refer test cases for more details](test/stages/stage2-cert-manager-cert.tf)

```hcl-terraform
terraform {
  required_providers {
    ibm = {
      source = "ibm-cloud/ibm"
    }
  }
  required_version = ">= 0.13"
}

provider "ibm" {
  ibmcloud_api_key = var.ibmcloud_api_key
  region = var.region
}

module "cert-manager-cert" {
  source = "github.com/cloud-native-toolkit/terraform-ibm-cert-manager-cert"

  cert_manager_id = module.cert-manager.id
  name = var.certificate_name
  provision = var.certificate_provision
  cert = module.cert.cert
  private_key = module.cert.private_key
}
```

