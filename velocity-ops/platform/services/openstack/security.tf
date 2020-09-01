resource "openstack_networking_secgroup_v2" "ldap" {
  name        = "ldap"
  description = "access to ldap services"
  tenant_id   = openstack_identity_project_v3.core.id
}
resource "openstack_networking_secgroup_v2" "ssh" {
  name        = "ssh"
  description = "access to ssh services"
  tenant_id   = openstack_identity_project_v3.core.id
}
resource "openstack_networking_secgroup_v2" "www" {
  name        = "www"
  description = "access to www services"
  tenant_id   = openstack_identity_project_v3.core.id
}
resource "openstack_networking_secgroup_v2" "ewww" {
  name        = "ewww"
  description = "access to ewww services"
  tenant_id   = openstack_identity_project_v3.core.id
}
resource "openstack_networking_secgroup_v2" "mysql" {
  name        = "mysql"
  description = "access to mysql services"
  tenant_id   = openstack_identity_project_v3.core.id
}
resource "openstack_networking_secgroup_v2" "rundeck" {
  name        = "rundeck"
  description = "access to rundeck services"
  tenant_id   = openstack_identity_project_v3.core.id
}
resource "openstack_networking_secgroup_v2" "mail" {
  name        = "mail"
  description = "access to mail services"
  tenant_id   = openstack_identity_project_v3.core.id
}

resource "openstack_networking_secgroup_rule_v2" "ldap_rule" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 636
  port_range_max    = 636
  remote_group_id = openstack_networking_secgroup_v2.ldap.id
  security_group_id = openstack_networking_secgroup_v2.ldap.id
  tenant_id   = openstack_identity_project_v3.core.id
}
resource "openstack_networking_secgroup_rule_v2" "ssh_rule" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 22
  port_range_max    = 22
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = openstack_networking_secgroup_v2.ssh.id
  tenant_id   = openstack_identity_project_v3.core.id
}
resource "openstack_networking_secgroup_rule_v2" "mysql_rule" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 3306
  port_range_max    = 3306
  remote_group_id = openstack_networking_secgroup_v2.mysql.id
  security_group_id = openstack_networking_secgroup_v2.mysql.id
  tenant_id   = openstack_identity_project_v3.core.id
}
resource "openstack_networking_secgroup_rule_v2" "www_rule_80" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 80
  port_range_max    = 80
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = openstack_networking_secgroup_v2.www.id
  tenant_id   = openstack_identity_project_v3.core.id
}
resource "openstack_networking_secgroup_rule_v2" "www_rule_443" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 443
  port_range_max    = 443
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = openstack_networking_secgroup_v2.www.id
  tenant_id   = openstack_identity_project_v3.core.id
}
resource "openstack_networking_secgroup_rule_v2" "ewww_rule_8080" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 8080
  port_range_max    = 8080
  remote_group_id = openstack_networking_secgroup_v2.ewww.id
  security_group_id = openstack_networking_secgroup_v2.ewww.id
  tenant_id   = openstack_identity_project_v3.core.id
}
resource "openstack_networking_secgroup_rule_v2" "ewww_rule_8443" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 8443
  port_range_max    = 8443
  remote_group_id = openstack_networking_secgroup_v2.ewww.id
  security_group_id = openstack_networking_secgroup_v2.ewww.id
  tenant_id   = openstack_identity_project_v3.core.id
}
resource "openstack_networking_secgroup_rule_v2" "rundeck_rule_4440" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 4440
  port_range_max    = 4440
  remote_group_id = openstack_networking_secgroup_v2.rundeck.id
  security_group_id = openstack_networking_secgroup_v2.rundeck.id
  tenant_id   = openstack_identity_project_v3.core.id
}
resource "openstack_networking_secgroup_rule_v2" "rundeck_rule_4443" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 4443
  port_range_max    = 4443
  remote_group_id = openstack_networking_secgroup_v2.rundeck.id
  security_group_id = openstack_networking_secgroup_v2.rundeck.id
  tenant_id   = openstack_identity_project_v3.core.id
}
resource "openstack_networking_secgroup_rule_v2" "mail_rule_25" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 25
  port_range_max    = 25
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = openstack_networking_secgroup_v2.mail.id
  tenant_id   = openstack_identity_project_v3.core.id
}
resource "openstack_networking_secgroup_rule_v2" "mail_rule_465" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 465
  port_range_max    = 465
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = openstack_networking_secgroup_v2.mail.id
  tenant_id   = openstack_identity_project_v3.core.id
}
resource "openstack_networking_secgroup_rule_v2" "mail_rule_587" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 587
  port_range_max    = 587
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = openstack_networking_secgroup_v2.mail.id
  tenant_id   = openstack_identity_project_v3.core.id
}
resource "openstack_networking_secgroup_rule_v2" "mail_rule_993" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 993
  port_range_max    = 993
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = openstack_networking_secgroup_v2.mail.id
  tenant_id   = openstack_identity_project_v3.core.id
}
