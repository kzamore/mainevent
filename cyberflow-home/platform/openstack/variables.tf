variable "opnsense_image_url" {
  type = string
  default = "https://cloud-images.ubuntu.com/releases/focal/release/ubuntu-20.04-server-cloudimg-amd64.img"
}
variable "pfsense_image_url" {
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
variable "int_subnet_cidr" {
  type = string
  default = "10.93.24.0/24"
}
variable "int_subnet_gateway" {
  type = string
  default = "10.93.24.1"
}
variable "int_subnet_start_ip" {
  type = string
  default = "10.93.24.24"
}
variable "int_subnet_end_ip" {
  type = string
  default = "10.93.24.224"
}
