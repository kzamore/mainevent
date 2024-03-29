output "core_project_id" {
   value = openstack_identity_project_v3.core.id
}
output "image_opnsense_id" {
  value = openstack_images_image_v2.opnsense.id
}
output "image_pfsense_id" {
  value = openstack_images_image_v2.pfsense.id
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

