variable "openstack_host" {
  type = string
}
variable "openstack_user" {
  type = string
}
variable "openstack_password" {
  type = string
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
variable "int_subnet_cidr" {
  type = string
}
variable "int_subnet_gateway" {
  type = string
}
variable "int_subnet_start_ip" {
  type = string
}
variable "int_subnet_end_ip" {
  type = string
}
variable "lan_subnet_cidr" {
  type = string
}
variable "lan_subnet_gateway" {
  type = string
}
variable "lan_subnet_start_ip" {
  type = string
}
variable "lan_subnet_end_ip" {
  type = string
}
variable "cloudkey_value" {
  type = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDpbjtiKJjh2q1347PnbskDyex1ydz0ZXWwBvDiNYCu4+o9A/OO6axn0zf+vf8r1QFVyeOcaoqYLqYUYGuN453vMD1BNERvXfYaQdVR1yWcwVDdu3JAW4pXLlX3wAxCi6g5QtIlRRMeO6r72hdi4RUiTwSXhIxfBSAMVummyOAABgdK50sO7laifbD9rQAnIk31li8oOT2Lcue3ebY76CDWsuoLBl4aUy7Zwcd/dwj1trbO1q1X75amxAjKc04fbAyd/HxSfMBVYMnputXU/z97OAUApd+al0OBYIYmTwPbBx0bdl1GwFyg8lGZnJEqZJigaCppmqfke3es9aPYdXIl nodelogic"
}
