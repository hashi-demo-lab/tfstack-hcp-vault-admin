component "k8s_auth" {
  source   = "./vault-k8s"

  inputs = {
    kubernetes_auth_path = var.kubernetes_auth_path
    namespace            = var.namespace
    vault_token          = var.vault_token
  }

  providers = {
    vault = provider.vault.this
  }
}