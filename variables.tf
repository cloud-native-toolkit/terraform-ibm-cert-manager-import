variable "ibmcloud_api_key" {
  type        = string
  description = "The api key for IBM Cloud access"
}

variable "region" {
  type        = string
  description = "Geographic location of the resource (e.g. us-south, us-east)"
}

variable "cert_manager_id" {
  type        = string
  description = "The id of the certificate manager instance"
}

variable "name" {
  type        = string
  description = "The name of the certificate"
}

variable "provision" {
  type        = bool
  description = "Flag indicating that the certificate should be provisioned. If false the certificate will be looked up"
  default     = true
}

variable "cert" {
  type        = string
  description = "The value for the certificate that will be imported"
  default     = ""
}

variable "private_key" {
  type        = string
  description = "The private key for the certificate that will be imported"
  default     = ""
}
