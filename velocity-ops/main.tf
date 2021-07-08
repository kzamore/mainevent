module "platform" {
	source = "./platform"
	openstack_password = var.openstack_password
	openstack_host = var.openstack_host
	public_subnet_cidr = var.public_subnet_cidr
	public_subnet_gateway = var.public_subnet_gateway
	public_subnet_start_ip = var.public_subnet_start_ip
	public_subnet_end_ip = var.public_subnet_end_ip
	shared_subnet_cidr = var.shared_subnet_cidr
	shared_subnet_gateway = var.shared_subnet_gateway
	shared_subnet_start_ip = var.shared_subnet_start_ip
	shared_subnet_end_ip = var.shared_subnet_end_ip
	cloudkey_value = var.cloudkey_value
}

