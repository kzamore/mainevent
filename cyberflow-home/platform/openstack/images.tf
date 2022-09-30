resource "opnsense_images_image_v2" "opnsense" {
  name             = "OPNSense"
  image_source_url = var.opnsense_image_url
  container_format = "bare"
  disk_format      = "qcow2"
  visibility	   = "public"
}
resource "pfsense_images_image_v2" "pfsense" {
  name             = "pfSense"
  image_source_url = var.pfsense_image_url
  container_format = "bare"
  disk_format      = "raw"
  visibility	   = "public"
}
