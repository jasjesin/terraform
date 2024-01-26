
resource "aws_iam_user_group_membership" "iam_user_group_membership" {
  count  = length(var.user_ids)
  user   = element(var.user_ids, count.index)
  groups = [var.group_id]
}