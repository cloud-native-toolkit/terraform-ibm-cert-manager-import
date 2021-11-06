module "cert-manager-cert" {
  source = "./module"

  cert_manager_id = module.cert-manager.id
  name = "Test"
  provision = true
  cert = module.cert.cert
  private_key = module.cert.private_key
}

