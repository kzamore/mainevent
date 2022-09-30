variable "openstack_project" {
  type = string
  default = "admin"
}
variable "openstack_host" {
  type = string
}
variable "openstack_user" {
  type = string
  default = "admin"
}
variable "openstack_password" {
  type = string
}
variable "env" {
  type = string
  default = "sandbox"
}
variable "ubuntu_image_url" {
  type = string
  default = "https://cloud-images.ubuntu.com/releases/bionic/release/ubuntu-20.04-server-cloudimg-amd64.img"
}
variable "public_subnet_cidr" {
  type = string
}
variable "public_subnet_gateway" {
  type = string
}
variable "public_subnet_start_ip" {
  type = string
}
variable "public_subnet_end_ip" {
  type = string
}
variable "lan_subnet_cidr" {
  type = string
  default = "172.17.0.0/24"
}
variable "lan_subnet_gateway" {
  type = string
  default = "172.17.0.2"
}
variable "lan_subnet_start_ip" {
  type = string
  default = "172.17.0.100"
}
variable "lan_subnet_end_ip" {
  type = string
  default = "172.17.0.150"
}
variable "int_subnet_cidr" {
  type = string
  default = "172.20.0.0/24"
}
variable "int_subnet_gateway" {
  type = string
  default = "172.20.0.2"
}
variable "int_subnet_start_ip" {
  type = string
  default = "172.20.0.100"
}
variable "int_subnet_end_ip" {
  type = string
  default = "172.20.0.150"
}
variable "namecheap_user" {
  type = string
}
variable "namecheap_token" {
  type = string
}
variable "namecheap_ip" {
  type = string
}
variable "core_user_name" {
  type = string
  default = "tyrone"
}
variable "core_user_password" {
  type = string
  default = "tyroneking99"
}
