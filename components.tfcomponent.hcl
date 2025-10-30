component "k8s_auth" {
  source   = "./vault-k8s"

  inputs = {
    kubernetes_auth_path = var.kubernetes_auth_path
    namespace            = var.namespace
  }

  providers = {
    vault = provider.vault.this
  }
}