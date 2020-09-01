module "platform" {
	source = "./platform"
	openstack_password = var.openstack_password
	openstack_host = var.openstack_host
	public_subnet_cidr = "104.4.58.176/29" 
	public_subnet_gateway = "104.4.58.182"
	public_subnet_start_ip = "104.4.58.177"
	public_subnet_end_ip = "104.4.58.180"
	int_subnet_cidr = "172.17.20.0/24"
	int_subnet_gateway = "172.17.20.2"
	int_subnet_start_ip = "172.17.20.10"
	int_subnet_end_ip = "172.17.20.200"
	lan_subnet_cidr = "172.17.0.0/24"
	lan_subnet_gateway = "172.17.0.2"
	lan_subnet_start_ip = "172.17.0.10"
	lan_subnet_end_ip = "172.17.0.200"
}

