resource "openstack_images_image_v2" "centos7" {
  name             = "CentOS 7"
  image_source_url = var.centos_image_url
  container_format = "bare"
  disk_format      = "qcow2"
  visibility	   = "public"
}
resource "openstack_images_image_v2" "centos8" {
  name             = "CentOS 8"
  image_source_url = var.centos8_image_url
  container_format = "bare"
  disk_format      = "qcow2"
  visibility	   = "public"
}
resource "openstack_images_image_v2" "centos9" {
  name             = "CentOS 9"
  image_source_url = var.centos9_image_url
  container_format = "bare"
  disk_format      = "qcow2"
  visibility	   = "public"
}
resource "openstack_images_image_v2" "ubuntu2204" {
  name             = "Ubuntu 22.04 LTS"
  image_source_url = var.ubuntu2204_image_url
  container_format = "bare"
  disk_format      = "raw"
  visibility	   = "public"
}
resource "openstack_images_image_v2" "ubuntu2004" {
  name             = "Ubuntu 20.04 LTS"
  image_source_url = var.ubuntu2004_image_url
  container_format = "bare"
  disk_format      = "raw"
  visibility	   = "public"
}
resource "openstack_images_image_v2" "ubuntu1804" {
  name             = "Ubuntu 18.04 LTS"
  image_source_url = var.ubuntu1804_image_url
  container_format = "bare"
  disk_format      = "raw"
  visibility	   = "public"
}
