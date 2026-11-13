output "networking_bgp_peer_v2s_id" {
  description = "Map of id values across all networking_bgp_peer_v2s, keyed the same as var.networking_bgp_peer_v2s"
  value       = { for k, v in openstack_networking_bgp_peer_v2.networking_bgp_peer_v2s : k => v.id }
}
output "networking_bgp_peer_v2s_auth_type" {
  description = "Map of auth_type values across all networking_bgp_peer_v2s, keyed the same as var.networking_bgp_peer_v2s"
  value       = { for k, v in openstack_networking_bgp_peer_v2.networking_bgp_peer_v2s : k => v.auth_type }
}
output "networking_bgp_peer_v2s_name" {
  description = "Map of name values across all networking_bgp_peer_v2s, keyed the same as var.networking_bgp_peer_v2s"
  value       = { for k, v in openstack_networking_bgp_peer_v2.networking_bgp_peer_v2s : k => v.name }
}
output "networking_bgp_peer_v2s_password" {
  description = "Map of password values across all networking_bgp_peer_v2s, keyed the same as var.networking_bgp_peer_v2s"
  value       = { for k, v in openstack_networking_bgp_peer_v2.networking_bgp_peer_v2s : k => v.password }
  sensitive   = true
}
output "networking_bgp_peer_v2s_peer_ip" {
  description = "Map of peer_ip values across all networking_bgp_peer_v2s, keyed the same as var.networking_bgp_peer_v2s"
  value       = { for k, v in openstack_networking_bgp_peer_v2.networking_bgp_peer_v2s : k => v.peer_ip }
}
output "networking_bgp_peer_v2s_region" {
  description = "Map of region values across all networking_bgp_peer_v2s, keyed the same as var.networking_bgp_peer_v2s"
  value       = { for k, v in openstack_networking_bgp_peer_v2.networking_bgp_peer_v2s : k => v.region }
}
output "networking_bgp_peer_v2s_remote_as" {
  description = "Map of remote_as values across all networking_bgp_peer_v2s, keyed the same as var.networking_bgp_peer_v2s"
  value       = { for k, v in openstack_networking_bgp_peer_v2.networking_bgp_peer_v2s : k => v.remote_as }
}
output "networking_bgp_peer_v2s_tenant_id" {
  description = "Map of tenant_id values across all networking_bgp_peer_v2s, keyed the same as var.networking_bgp_peer_v2s"
  value       = { for k, v in openstack_networking_bgp_peer_v2.networking_bgp_peer_v2s : k => v.tenant_id }
}

