provider "openstack" {
  user_name   = var.openstack_user
  tenant_name = var.openstack_project
  password    = var.openstack_password
  auth_url    = "http://${var.openstack_host}:5000/v3"
  region      = "RegionOne"
}

#provider "namecheap" {
# username = "aaccell"
#  api_user = "aaccell" # Same as username
#  token = "e7479d38639e439ca48aefb97cd55f47"
#  ip = "76.30.101.145"
#  use_sandbox = false #
#}

