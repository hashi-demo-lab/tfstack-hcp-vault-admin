component "k8s_auth" {
  source   = "./vault-k8s"

#   inputs = {
#     vpc_name = "stacks-${each.value}-${var.default_tags.Environment}"
#   }

  providers = {
    vault = provider.vault.this
  }
}