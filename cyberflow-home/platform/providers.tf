provider "openstack" {
  user_name   = var.openstack_user
  tenant_name = var.openstack_project
  password    = var.openstack_password
  auth_url    = "http://${var.openstack_host}:5000/v3"
  region      = "RegionOne"
}

provider "namecheap" {
 username = var.namecheap_user
  api_user = var.namecheap_user
  token = var.namecheap_token
  ip = var.namecheap_ip
  use_sandbox = false #
}

