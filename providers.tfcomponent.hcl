required_providers {
  aws = {
    source  = "hashicorp/aws"
    version = "~> 6.0"
  }

  cloudinit = {
    source  = "hashicorp/cloudinit"
    version = "~> 2.0"
  }

  kubernetes = {
    source  = "hashicorp/kubernetes"
    version = "~> 2.25"
  }

  time = {
    source  = "hashicorp/time"
    version = "~> 0.1"
  }

  tls = {
    source  = "hashicorp/tls"
    version = "~> 4.0"
  }

  helm = {
    source  = "hashicorp/helm"
    version = "~> 2.12"
  }

  local = {
    source  = "hashicorp/local"
    version = "~> 2.4"
  }

  random = {
    source  = "hashicorp/random"
    version = "~> 3.7.0"
  }

  null = {
    source  = "hashicorp/null"
    version = ">= 3.0"
  }

  vault = {
    source  = "hashicorp/vault"
    version = "~> 4.0"
  }

}

provider "aws" "configurations" {
  for_each = var.regions

  config {
    region = each.value

    assume_role_with_web_identity {
      role_arn           = var.role_arn
      web_identity_token = var.aws_identity_token
    }
  }
}

provider "vault" "configurations" {
  address = var.vault_address
}

provider "cloudinit" "this" {}
provider "time" "this" {}
provider "tls" "this" {}
provider "local" "this" {}
provider "random" "this" {}
provider "null" "this" {}
provider "vault" "this" {}
