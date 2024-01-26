
resource "aws_lb_listener" "elb_listener" {
  load_balancer_arn = var.elb_arn
  port              = lookup(var.port, "http")
  protocol          = lookup(var.protocol, "regular")
  default_action {
    type = var.listener_type
    forward {
      target_group {
        arn = var.tg_arn
      }
      stickiness {
        enabled  = var.stickiness
        duration = var.stickiness_duration
      }
    }
  }
}
