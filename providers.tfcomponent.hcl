required_providers {
  vault = {
    source  = "hashicorp/vault"
    version = "~> 4.0"
  }

}


provider "vault" "this" {
  config {
    address   = var.vault_address
    namespace = var.namespace
    token     = var.vault_token
  }
}

