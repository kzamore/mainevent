data "openstack_identity_role_v3" "member" {
  name = "_member_"
}

#resource "openstack_identity_project_v3" "core" {
#  name        = "core"
#  description = "Core Services that power this cloud"
#}

resource "openstack_identity_user_v3" "tyrone" {
  default_project_id = openstack_identity_project_v3.core.id
  name               = "tyrone"
  description        = "A user"

  password = "tyroneking99"

  ignore_change_password_upon_first_use = true
}


resource "openstack_identity_role_assignment_v3" "role_assignment_member_tyrone" {
  user_id    = openstack_identity_user_v3.tyrone.id
  project_id = openstack_identity_project_v3.core.id
  role_id    = data.openstack_identity_role_v3.member.id
}

