

output "private_key" {
  value = data.ibm_certificate_manager_certificate.cert.data.priv_key
  sensitive = true
}

output "cert" {
  value = data.ibm_certificate_manager_certificate.cert.data.content
}
