resource "openstack_compute_flavor_v2" "us2_xsmall" {
  vcpus = 1
  ram   = 1024
  disk  = 10
  name = "us2_xsmall"
  is_public  = true
}
resource "openstack_compute_flavor_v2" "us2_small" {
  vcpus = 2
  ram   = 2048
  disk  = 10
  name = "us2_small"
  is_public  = true
}
resource "openstack_compute_flavor_v2" "us2_medium" {
  vcpus = 2
  ram   = 4096
  disk  = 10
  name = "us2_medium"
  is_public  = true
}
resource "openstack_compute_flavor_v2" "us2_large" {
  vcpus = 4
  ram   = 8192
  disk  = 10
  name = "us2_large"
  is_public  = true
}
resource "openstack_compute_flavor_v2" "us2_xlarge" {
  vcpus = 8
  ram   = 16384
  disk  = 10
  name = "us2_xlarge"
  is_public  = true
}
resource "openstack_compute_flavor_v2" "us2_2xlarge" {
  vcpus = 16
  ram   = 32768
  disk  = 10
  name = "us2_2xlarge"
  is_public  = true
}
resource "openstack_compute_flavor_v2" "us2_3xlarge" {
  vcpus = 20
  ram   = 65536
  disk  = 10
  name = "us2_3xlarge"
  is_public  = true
}
resource "openstack_compute_flavor_v2" "us2_4xwtf" {
  vcpus = 24
  ram   = 131072
  disk  = 10
  name = "us2_4xwtf"
  is_public  = true
}
