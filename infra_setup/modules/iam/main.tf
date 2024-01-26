module "user" {
  source = "./user"

  users = var.users
}

module "group" {
  source = "./group"

  group = var.group
}

module "membership" {
  source = "./membership"

  user_ids = module.user.user_ids
  group_id = module.group.group_id

  depends_on = [module.user, module.group]
}

module "policy" {
  source = "./policy"

  policy_name = var.policy_name
  group_id    = module.group.group_id

  depends_on = [module.group]
}