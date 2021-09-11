module "cert-manager-cert" {
  source = "./module"

  ibmcloud_api_key = var.ibmcloud_api_key
  region = var.region
  cert_manager_id = module.cert-manager.id
  name = "Test"
  provision = true
  cert = module.cert.cert
  private_key = module.cert.private_key
}

resource null_resource output_cert {
  provisioner "local-exec" {
    command = "echo -n '${module.cert-manager-cert.private_key}' > .private_key"
  }
  provisioner "local-exec" {
    command = "echo -n '${module.cert-manager-cert.cert}' > .cert"
  }
}
