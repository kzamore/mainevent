resource "openstack_identity_project_v3" "core" {
  name        = "core"
  description = "Core Services that power this cloud"
}

data "openstack_identity_role_v3" "admin" {
  name = "admin"
}
data "openstack_identity_user_v3" "admin" {
  name = "admin"
}

resource "openstack_identity_role_assignment_v3" "role_assignment_admin_admin" {
  user_id    = data.openstack_identity_user_v3.admin.id
  project_id = openstack_identity_project_v3.core.id
  role_id    = data.openstack_identity_role_v3.admin.id
}
