output "policy_id" {
  value = aws_iam_policy.policy.id
}

output "policy_attachment_id" {
  value = aws_iam_group_policy_attachment.iam_group_policy_attachment.id
}