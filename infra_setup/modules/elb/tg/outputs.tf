output "tg_id" {
  value = aws_lb_target_group.tg.id
}

output "tg_arn" {
  value = aws_lb_target_group.tg.arn
}

output "attach_tg_id" {
  value = aws_lb_target_group_attachment.attach_tg
}