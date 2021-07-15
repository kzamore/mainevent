module "openstack" {
	source = "./services/openstack"
	public_subnet_cidr = var.public_subnet_cidr
	public_subnet_gateway = var.public_subnet_gateway
	public_subnet_start_ip = var.public_subnet_start_ip
	public_subnet_end_ip = var.public_subnet_end_ip
	shared_subnet_cidr = var.shared_subnet_cidr
	shared_subnet_gateway = var.shared_subnet_gateway
	shared_subnet_start_ip = var.shared_subnet_start_ip
	shared_subnet_end_ip = var.shared_subnet_end_ip
	openstack_password = var.openstack_password
	openstack_host = var.openstack_host
        cloudkey_value = var.cloudkey_value
}

resource "openstack_networking_floatingip_v2" "public_ip" {
  pool = "igw_wan"
}

resource "openstack_compute_instance_v2" "vlb" {
  name            = "vlb.nodelogic.net"
  image_id        = module.openstack.image_ubuntu2004_id
  flavor_id       = module.openstack.flavor_us2_small_id
  key_pair        = module.openstack.cloudkey
  security_groups = ["default", "www","ssh"]

  metadata = {
    lb_hosts = join(", ", [
				"${openstack_compute_instance_v2.rundeck.access_ip_v4}",
				"${openstack_compute_instance_v2.idm.access_ip_v4}"
			])
  }
  network {
    name = module.openstack.network_shared_name
  }
}

resource "openstack_compute_instance_v2" "idm" {
  name            = "idm.nodelogic.net"
  image_id        = module.openstack.image_ubuntu2004_id
  flavor_id       = module.openstack.flavor_us2_large_id
  key_pair        = module.openstack.cloudkey
  security_groups = ["default", "www","ssh"]

  network {
    name = module.openstack.network_shared_name
  }
}

resource "openstack_compute_instance_v2" "rundeck" {
  name            = "rundeck.nodelogic.net"
  image_id        = module.openstack.image_ubuntu2004_id
  flavor_id       = module.openstack.flavor_us2_large_id
  key_pair        = module.openstack.cloudkey
  security_groups = ["default", "www","ssh"]

  network {
    name = module.openstack.network_shared_name
  }
}

resource "openstack_compute_floatingip_associate_v2" "public_ip" {
  floating_ip = "${openstack_networking_floatingip_v2.public_ip.address}"
  instance_id = "${openstack_compute_instance_v2.rundeck.id}"
}
