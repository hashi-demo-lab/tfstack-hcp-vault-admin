component "k8s_auth" {
  source   = "./k8s_auth"

#   inputs = {
#     vpc_name = "stacks-${each.value}-${var.default_tags.Environment}"
#   }

  providers = {
    vault = provider.vault.this
  }
}