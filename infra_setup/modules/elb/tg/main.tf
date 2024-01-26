
resource "aws_lb_target_group" "tg" {
  name        = "${var.name}-tg"
  port        = lookup(var.port, "http")
  protocol    = lookup(var.protocol, "regular")
  vpc_id      = var.vpc_id
  target_type = var.tg_type
}