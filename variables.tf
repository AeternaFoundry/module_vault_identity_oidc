variable "identity_oidcs" {
  description = <<EOT
Map of identity_oidcs, attributes below
Optional:
    - issuer
    - namespace
EOT

  type = map(object({
    issuer    = optional(string)
    namespace = optional(string)
  }))
}

