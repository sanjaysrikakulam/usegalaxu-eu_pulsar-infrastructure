data "openstack_networking_network_v2" "internal" {
  name = "${openstack_networking_network_v2._internal.name}"
}
