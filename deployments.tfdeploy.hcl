store "varset" "vault" {
  name       = "Vault tokens"
  category   = "terraform"
}

deployment "development" {
  inputs = {
    kubernetes_auth_path = "kubernetes"
    vault_token = store.varset.vault.VAULT_TOKEN
  }
}