resource "vault_identity_oidc" "identity_oidcs" {
  for_each = var.identity_oidcs

  issuer    = each.value.issuer
  namespace = each.value.namespace
}

