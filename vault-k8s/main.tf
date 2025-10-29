# Enable the Kubernetes auth method
resource "vault_auth_backend" "kubernetes" {
  type = "kubernetes"
  path = "kubernetes"

  description = "Kubernetes auth method for EKS cluster authentication"
}

# Configure the Kubernetes auth method
# resource "vault_kubernetes_auth_backend_config" "kubernetes" {
#   backend            = vault_auth_backend.kubernetes.path
#   kubernetes_host    = var.kubernetes_host
#   kubernetes_ca_cert = var.kubernetes_ca_cert
#   token_reviewer_jwt = var.token_reviewer_jwt

#   # Optional: Disable issuer validation if using EKS with OIDC
#   disable_iss_validation = var.disable_iss_validation

#   # Optional: For EKS IRSA
#   disable_local_ca_jwt = var.disable_local_ca_jwt
# }

# # Create a Kubernetes auth role
# resource "vault_kubernetes_auth_backend_role" "app" {
#   backend                          = vault_auth_backend.kubernetes.path
#   role_name                        = var.role_name
#   bound_service_account_names      = var.bound_service_account_names
#   bound_service_account_namespaces = var.bound_service_account_namespaces
#   token_ttl                        = var.token_ttl
#   token_max_ttl                    = var.token_max_ttl
#   token_policies                   = var.token_policies

#   # Optional: Audience for the JWT
#   audience = var.audience
# }

# # Output the auth backend path
# output "kubernetes_auth_path" {
#   description = "Path where the Kubernetes auth method is mounted"
#   value       = vault_auth_backend.kubernetes.path
# }

# output "kubernetes_auth_accessor" {
#   description = "Accessor for the Kubernetes auth method"
#   value       = vault_auth_backend.kubernetes.accessor
#   sensitive   = true
# }

# output "kubernetes_role_name" {
#   description = "Name of the Kubernetes auth role"
#   value       = vault_kubernetes_auth_backend_role.app.role_name
# }
