output "user_ids" {
  value = aws_iam_user.user[*].id
}