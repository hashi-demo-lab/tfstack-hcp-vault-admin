variable "kubernetes_host" {
  description = "The Kubernetes API server URL (e.g., https://kubernetes.default.svc)"
  type        = string
}

variable "kubernetes_ca_cert" {
  description = "PEM encoded CA certificate to verify the Kubernetes API server certificate"
  type        = string
  sensitive   = true
}

variable "token_reviewer_jwt" {
  description = "JWT token for Vault to use when verifying Kubernetes service account tokens"
  type        = string
  sensitive   = true
  default     = ""
}

variable "disable_iss_validation" {
  description = "Disable issuer validation (useful for EKS with OIDC)"
  type        = bool
  default     = false
}

variable "disable_local_ca_jwt" {
  description = "Disable defaulting to the local CA cert and service account JWT when running in a Kubernetes pod"
  type        = bool
  default     = false
}

variable "role_name" {
  description = "Name of the Kubernetes auth role"
  type        = string
  default     = "app-role"
}

variable "bound_service_account_names" {
  description = "List of service account names that are allowed to authenticate"
  type        = list(string)
  default     = ["*"]
}

variable "bound_service_account_namespaces" {
  description = "List of namespaces that service accounts must belong to"
  type        = list(string)
  default     = ["default"]
}

variable "token_ttl" {
  description = "The TTL period of tokens issued using this role in seconds"
  type        = number
  default     = 3600
}

variable "token_max_ttl" {
  description = "The maximum allowed lifetime of tokens issued using this role in seconds"
  type        = number
  default     = 86400
}

variable "token_policies" {
  description = "List of policies to be set on tokens issued using this role"
  type        = list(string)
  default     = []
}

variable "audience" {
  description = "Audience claim to verify in the JWT (optional)"
  type        = string
  default     = null
}
