module "openstack" {
	source = "./services/openstack"
	public_subnet_cidr = var.public_subnet_cidr
	public_subnet_gateway = var.public_subnet_gateway
	public_subnet_start_ip = var.public_subnet_start_ip
	public_subnet_end_ip = var.public_subnet_end_ip
	int_subnet_cidr = var.int_subnet_cidr
	int_subnet_gateway = var.int_subnet_gateway
	int_subnet_start_ip = var.int_subnet_start_ip
	int_subnet_end_ip = var.int_subnet_end_ip
}



