data "openstack_identity_role_v3" "member" {
  name = "_member_"
}
data "openstack_identity_role_v3" "admin" {
  name = "admin"
}
data "openstack_identity_user_v3" "admin" {
  name = "admin"
}

#resource "openstack_identity_project_v3" "core" {
#  name        = "core"
#  description = "Core Services that power this cloud"
#}

resource "openstack_identity_user_v3" "tyrone" {
  default_project_id = module.openstack.core_project_id
  name               = var.core_user_name
  description        = "A user"

  password = var.core_user_password

  ignore_change_password_upon_first_use = true
}


resource "openstack_identity_role_assignment_v3" "role_assignment_member_tyrone" {
  user_id    = openstack_identity_user_v3.tyrone.id
  project_id = module.openstack.core_project_id
  role_id    = data.openstack_identity_role_v3.member.id
}

