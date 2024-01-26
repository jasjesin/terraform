resource "aws_iam_group_policy_attachment" "iam_group_policy_attachment" {
  group      = var.group_id
  policy_arn = aws_iam_policy.policy.arn

  depends_on = [aws_iam_policy.policy]
}