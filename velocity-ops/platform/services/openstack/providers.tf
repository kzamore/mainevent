terraform {
	required_version = ">= 0.14.0"
	required_providers {
		openstack = {
			source = "terraform-provider-openstack/openstack"
			version = "~> 1.35.0"
		}
	}
}

provider "openstack" {
  user_name   = "admin"
  tenant_name = "admin"
  password    = var.openstack_password
  auth_url    = "http://${var.openstack_host}:5000/v3"
  region      = "RegionOne"
}




