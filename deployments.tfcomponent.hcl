identity_token "aws" {
  audience = ["aws.workload.identity"]
}

deployment "development" {
  inputs = {
    kubernetes_auth_path = var.kubernetes_auth_path
    role_arn       = "arn:aws:iam::034362039150:role/stacks-jessicaorg-ahm-hackathon"
    identity_token = identity_token.aws.jwt

    default_tags = {
      Stack       = "tfstack-hcp-vault-admin",
      Environment = "sandbox"
    }
    
  }
  destroy = true
}