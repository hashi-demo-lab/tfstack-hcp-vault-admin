deployment "development" {
  inputs = {
    kubernetes_auth_path = "kubernetes"

    default_tags = {
      Stack       = "tfstack-hcp-vault-admin",
      Environment = "sandbox"
    }
    
  }
}