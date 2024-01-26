resource "aws_iam_user" "user" {
  count = length(var.users)
  name  = element(var.users, count.index)
}