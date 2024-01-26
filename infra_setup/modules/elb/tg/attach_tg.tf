
resource "aws_lb_target_group_attachment" "attach_tg" {
  count            = length(var.ec2_ids)
  target_group_arn = aws_lb_target_group.tg.arn
  target_id        = element(var.ec2_ids, count.index)
  port             = lookup(var.port, "http")
}
