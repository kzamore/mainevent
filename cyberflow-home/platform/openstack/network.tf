resource "openstack_networking_network_v2" "igw_wan" {
  name           = "igw_wan"
  admin_state_up = "true"
  shared	 = "true"
  external	 = "true"
  segments	 {
	physical_network	= "extnet"
	network_type		= "flat"
  }
  tenant_id	 = openstack_identity_project_v3.core.id
}
resource "openstack_networking_network_v2" "internal_shared" {
  name           = "internal_shared"
  admin_state_up = "true"
  shared	 = "true"
  external	 = "false"
  tenant_id	 = openstack_identity_project_v3.core.id
}

resource "openstack_networking_subnet_v2" "public_subnet_1" {
  name       = "public_subnet_1"
  network_id = openstack_networking_network_v2.igw_wan.id
  cidr       = var.public_subnet_cidr
  gateway_ip = var.public_subnet_gateway
  ip_version = 4
  enable_dhcp = "false" 
  allocation_pool {    
	start = var.public_subnet_start_ip
	end = var.public_subnet_end_ip
  } 
  tenant_id	 = openstack_identity_project_v3.core.id
}

resource "openstack_networking_subnet_v2" "internal_subnet_1" {
  name       = "internal_subnet_1"
  network_id = openstack_networking_network_v2.internal_shared.id
  cidr       = var.int_subnet_cidr
  gateway_ip = var.int_subnet_gateway
  ip_version = 4
  enable_dhcp = "true"
  dns_nameservers = ["8.8.8.8"]
  allocation_pool {    
	start = var.int_subnet_start_ip
	end = var.int_subnet_end_ip
  } 
  tenant_id	 = openstack_identity_project_v3.core.id
}

resource "openstack_networking_router_v2" "igw_router_wan" {
  name                = "igw_router_wan"
  admin_state_up      = true
  external_network_id = openstack_networking_network_v2.igw_wan.id
  tenant_id	 = openstack_identity_project_v3.core.id
}

resource "openstack_networking_router_interface_v2" "internal_subnet_1_router_interface" {
  router_id = openstack_networking_router_v2.igw_router_wan.id
  subnet_id = openstack_networking_subnet_v2.internal_subnet_1.id
}
