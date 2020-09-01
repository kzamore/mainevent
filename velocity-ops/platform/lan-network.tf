resource "openstack_networking_network_v2" "igw_lan" {
  name           = "igw_lan"
  admin_state_up = "true"
  shared	 = "true"
  external	 = "true"
  segments	 {
	physical_network	= "lannet"
	network_type		= "flat"
  }
  tenant_id	 = module.openstack.core_project_id
}

resource "openstack_networking_subnet_v2" "lan_subnet_1" {
  name       = "lan_subnet_1"
  network_id = openstack_networking_network_v2.igw_lan.id
  cidr       = var.lan_subnet_cidr
  gateway_ip = var.lan_subnet_gateway
  ip_version = 4
  enable_dhcp = "false" 
  allocation_pool {    
	start = var.lan_subnet_start_ip
	end = var.lan_subnet_end_ip
  } 
  tenant_id	 = module.openstack.core_project_id
}

resource "openstack_networking_router_v2" "igw_router_lan" {
  name                = "igw_router_lan"
  admin_state_up      = true
  external_network_id = openstack_networking_network_v2.igw_lan.id
  tenant_id	 = module.openstack.core_project_id
}

#resource "openstack_networking_router_interface_v2" "lan_subnet_1_router_interface" {
#  router_id = openstack_networking_router_v2.igw_router_lan.id
#  subnet_id = data.openstack_networking_subnet_v2.internal_subnet_1.id
#}
