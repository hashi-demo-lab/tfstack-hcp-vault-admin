required_providers {
  vault = {
    source  = "hashicorp/vault"
    version = "~> 4.0"
  }

}


provider "vault" "this" {
  config {
    address = var.vault_address
    token   = var.vault_token
  }
}

