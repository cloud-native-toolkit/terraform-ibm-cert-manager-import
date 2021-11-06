
resource null_resource output_cert {
  provisioner "local-exec" {
    command = "echo -n '${module.cert-manager-cert.private_key}' > .private_key"
  }
  provisioner "local-exec" {
    command = "echo -n '${module.cert-manager-cert.cert}' > .cert"
  }
}
