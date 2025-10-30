# Vault
variable "vault_address" {
  description = "Address of the Vault server"
  type        = string
  default     = "https://vault-prod-cluster-public-vault-e9ea50ce.a99efec2.z1.hashicorp.cloud:8200"
}

# variable "vault_token" {
#   description = "vault token"
#   type        = string
#   sensitive   = true
# }

variable "kubernetes_auth_path" {
  description = "The path where the Kubernetes auth method is mounted"
  type        = string
  default     = "kubernetes"
}

# variable "vault_connection_name" {
#   description = "Name of the VaultConnection resource"
#   type        = string
#   default     = "default"
# }

# variable "vault_skip_tls_verify" {
#   description = "Skip TLS verification for Vault connection"
#   type        = bool
#   default     = false
# }

# variable "vault_auth_mount" {
#   description = "Vault auth mount path for Kubernetes authentication"
#   type        = string
#   default     = ""
# }

# variable "vault_kubernetes_role" {
#   description = "Vault Kubernetes auth role name"
#   type        = string
#   default     = "vso"
# }

# variable "vault_service_account" {
#   description = "Kubernetes service account for Vault authentication"
#   type        = string
#   default     = "default"
# }

