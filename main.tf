resource "openstack_networking_bgp_peer_v2" "networking_bgp_peer_v2s" {
  for_each = var.networking_bgp_peer_v2s

  peer_ip   = each.value.peer_ip
  remote_as = each.value.remote_as
  auth_type = each.value.auth_type
  name      = each.value.name
  password  = each.value.password
  region    = each.value.region
  tenant_id = each.value.tenant_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      delete = timeouts.value.delete
    }
  }
}

