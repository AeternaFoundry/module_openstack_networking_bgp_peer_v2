variable "networking_bgp_peer_v2s" {
  description = <<EOT
Map of networking_bgp_peer_v2s, attributes below
Required:
    - peer_ip
    - remote_as
Optional:
    - auth_type
    - name
    - password
    - region
    - tenant_id
    - timeouts (block):
        - delete (optional)
EOT

  type = map(object({
    peer_ip   = string
    remote_as = number
    auth_type = optional(string)
    name      = optional(string)
    password  = optional(string)
    region    = optional(string)
    tenant_id = optional(string)
    timeouts = optional(object({
      delete = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.networking_bgp_peer_v2s : (
        v.auth_type == null || (contains(["none", "md5"], v.auth_type))
      )
    ])
    error_message = "must be one of: \"none\", \"md5\""
  }
  validation {
    condition = alltrue([
      for k, v in var.networking_bgp_peer_v2s : (
        v.remote_as >= 1
      )
    ])
    error_message = "must be at least 1"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

