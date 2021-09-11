
resource ibm_certificate_manager_import cert {
  count = var.provision ? 1 : 0

  certificate_manager_instance_id = var.cert_manager_id
  name                            = var.name
  description                     = "The ${var.name} certificate"
  data = {
    content = var.cert
    priv_key = var.private_key
  }
}

data ibm_certificate_manager_certificate cert {
  depends_on = [ibm_certificate_manager_import.cert]

  certificate_manager_instance_id = var.cert_manager_id
  name                            = var.name
}

resource null_resource print_output {
  provisioner "local-exec" {
    command = "echo '${jsonencode(data.ibm_certificate_manager_certificate.cert.certificate_details)}'"
  }
}
