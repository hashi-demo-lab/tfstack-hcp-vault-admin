component "k8s_auth" {
  source   = "./vault-k8s"

  inputs = {
    kubernetes_auth_path = var.kubernetes_auth_path
    namespace            = var.namespace
    vault_token          = var.vault_token
    kubernetes_ca_cert   = var.kubernetes_ca_cert
    kubernetes_host      = var.kubernetes_host
  }

  providers = {
    vault = provider.vault.this
  }
}