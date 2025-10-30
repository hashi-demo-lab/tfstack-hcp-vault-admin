store "varset" "vault" {
  id         = "varset-4nWn6NhNY5rtigLt"
  category   = "env"
}

deployment "development" {
  inputs = {
    kubernetes_auth_path = "kubernetes"
    token                = store.varset.vault.VAULT_TOKEN
    namespace            = "admin"
  }
}