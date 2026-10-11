output "networking_bgp_peer_v2s_id" {
  description = "Map of id values across all networking_bgp_peer_v2s, keyed the same as var.networking_bgp_peer_v2s except keys with no id are omitted"
  value       = { for k, v in openstack_networking_bgp_peer_v2.networking_bgp_peer_v2s : k => v.id if v.id != null && length(v.id) > 0 }
}
output "networking_bgp_peer_v2s_auth_type" {
  description = "Map of auth_type values across all networking_bgp_peer_v2s, keyed the same as var.networking_bgp_peer_v2s except keys with no auth_type are omitted"
  value       = { for k, v in openstack_networking_bgp_peer_v2.networking_bgp_peer_v2s : k => v.auth_type if v.auth_type != null && length(v.auth_type) > 0 }
}
output "networking_bgp_peer_v2s_name" {
  description = "Map of name values across all networking_bgp_peer_v2s, keyed the same as var.networking_bgp_peer_v2s except keys with no name are omitted"
  value       = { for k, v in openstack_networking_bgp_peer_v2.networking_bgp_peer_v2s : k => v.name if v.name != null && length(v.name) > 0 }
}
output "networking_bgp_peer_v2s_password" {
  description = "Map of password values across all networking_bgp_peer_v2s, keyed the same as var.networking_bgp_peer_v2s except keys with no password are omitted"
  value       = { for k, v in openstack_networking_bgp_peer_v2.networking_bgp_peer_v2s : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}
output "networking_bgp_peer_v2s_peer_ip" {
  description = "Map of peer_ip values across all networking_bgp_peer_v2s, keyed the same as var.networking_bgp_peer_v2s except keys with no peer_ip are omitted"
  value       = { for k, v in openstack_networking_bgp_peer_v2.networking_bgp_peer_v2s : k => v.peer_ip if v.peer_ip != null && length(v.peer_ip) > 0 }
}
output "networking_bgp_peer_v2s_region" {
  description = "Map of region values across all networking_bgp_peer_v2s, keyed the same as var.networking_bgp_peer_v2s except keys with no region are omitted"
  value       = { for k, v in openstack_networking_bgp_peer_v2.networking_bgp_peer_v2s : k => v.region if v.region != null && length(v.region) > 0 }
}
output "networking_bgp_peer_v2s_remote_as" {
  description = "Map of remote_as values across all networking_bgp_peer_v2s, keyed the same as var.networking_bgp_peer_v2s except keys with no remote_as are omitted"
  value       = { for k, v in openstack_networking_bgp_peer_v2.networking_bgp_peer_v2s : k => v.remote_as if v.remote_as != null }
}
output "networking_bgp_peer_v2s_tenant_id" {
  description = "Map of tenant_id values across all networking_bgp_peer_v2s, keyed the same as var.networking_bgp_peer_v2s except keys with no tenant_id are omitted"
  value       = { for k, v in openstack_networking_bgp_peer_v2.networking_bgp_peer_v2s : k => v.tenant_id if v.tenant_id != null && length(v.tenant_id) > 0 }
}

