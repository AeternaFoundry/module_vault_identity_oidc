output "identity_oidcs_id" {
  description = "Map of id values across all identity_oidcs, keyed the same as var.identity_oidcs except keys with no id are omitted"
  value       = { for k, v in vault_identity_oidc.identity_oidcs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identity_oidcs_issuer" {
  description = "Map of issuer values across all identity_oidcs, keyed the same as var.identity_oidcs except keys with no issuer are omitted"
  value       = { for k, v in vault_identity_oidc.identity_oidcs : k => v.issuer if v.issuer != null && length(v.issuer) > 0 }
}
output "identity_oidcs_namespace" {
  description = "Map of namespace values across all identity_oidcs, keyed the same as var.identity_oidcs except keys with no namespace are omitted"
  value       = { for k, v in vault_identity_oidc.identity_oidcs : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}

