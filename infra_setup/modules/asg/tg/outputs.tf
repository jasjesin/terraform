output "tg_id" {
  value = aws_lb_target_group.asg_tg.id
}

output "tg_arn" {
  value = aws_lb_target_group.asg_tg.arn
}
