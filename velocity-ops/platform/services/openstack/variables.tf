variable "cloudkey_value" {
  type = string
}
variable "openstack_password" {
  type = string
}
variable "openstack_host" {
  type = string
}
variable "centos_image_url" {
  type = string
  default = "https://cloud.centos.org/centos/7/images/CentOS-7-x86_64-GenericCloud.qcow2"
}
variable "ubuntu2004_image_url" {
  type = string
  default = "https://cloud-images.ubuntu.com/releases/focal/release/ubuntu-20.04-server-cloudimg-amd64.img"
}
variable "ubuntu1804_image_url" {
  type = string
  default = "https://cloud-images.ubuntu.com/releases/bionic/release/ubuntu-18.04-server-cloudimg-amd64.img"
}
variable "public_subnet_cidr" {
  type = string
  default = "216.230.227.80/28"
}
variable "public_subnet_gateway" {
  type = string
  default = "216.230.227.81"
}
variable "public_subnet_start_ip" {
  type = string
  default = "216.230.227.85"
}
variable "public_subnet_end_ip" {
  type = string
  default = "216.230.227.90"
}
variable "shared_subnet_cidr" {
  type = string
  default = "10.93.24.0/24"
}
variable "shared_subnet_gateway" {
  type = string
  default = "10.93.24.1"
}
variable "shared_subnet_start_ip" {
  type = string
  default = "10.93.24.24"
}
variable "shared_subnet_end_ip" {
  type = string
  default = "10.93.24.224"
}
