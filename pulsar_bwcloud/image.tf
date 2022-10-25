data "openstack_images_image_v2" "vgcn-image" {
  # name = ${openstack_images_image_v2._vgcn-image.name}
  name = "${var.image["name"]}"
  most_recent = true
}
