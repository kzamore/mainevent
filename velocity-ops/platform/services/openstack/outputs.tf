output "core_project_id" {
   value = openstack_identity_project_v3.core.id
}
output "cloudkey" {
  value = openstack_compute_keypair_v2.cloudkey.name
}
output "image_ubuntu2004_id" {
  value = openstack_images_image_v2.ubuntu2004.id
}
output "image_ubuntu1804_id" {
  value = openstack_images_image_v2.ubuntu1804.id
}
output "image_centos7_id" {
  value = openstack_images_image_v2.centos7.id
}
output "flavor_us2_xsmall_id" {
  value = openstack_compute_flavor_v2.us2_xsmall.id
}
output "flavor_us2_small_id" {
  value = openstack_compute_flavor_v2.us2_small.id
}
output "flavor_us2_medium_id" {
  value = openstack_compute_flavor_v2.us2_medium.id
}
output "flavor_us2_large_id" {
  value = openstack_compute_flavor_v2.us2_large.id
}
output "flavor_us2_xlarge_id" {
  value = openstack_compute_flavor_v2.us2_xlarge.id
}
output "flavor_us2_2xlarge_id" {
  value = openstack_compute_flavor_v2.us2_2xlarge.id
}
output "flavor_us2_3xlarge_id" {
  value = openstack_compute_flavor_v2.us2_3xlarge.id
}
output "flavor_us2_4xwtf_id" {
  value = openstack_compute_flavor_v2.us2_4xwtf.id
}
output "network_shared_name" {
 value = openstack_networking_network_v2.internal_shared.name
}

