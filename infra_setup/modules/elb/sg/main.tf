resource "aws_security_group" "elb_sg" {
  name   = "${var.name}-elb-sg"
  vpc_id = var.vpc_id

  # allow all secure external world traffic
  ingress {
    from_port   = lookup(var.port, "https")
    to_port     = lookup(var.port, "https")
    protocol    = lookup(var.protocol, "ingress")
    cidr_blocks = ["${var.cidr_rt}"]
  }

  # allow all regular external world traffic
  ingress {
    from_port   = lookup(var.port, "http")
    to_port     = lookup(var.port, "http")
    protocol    = lookup(var.protocol, "ingress")
    cidr_blocks = ["${var.cidr_rt}"]
  }

  # all traffic allowed for egress
  egress {
    from_port   = lookup(var.port, "egress")
    to_port     = lookup(var.port, "egress")
    protocol    = lookup(var.protocol, "egress")
    cidr_blocks = ["${var.cidr_rt}"]
  }

  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Name = "${var.name}-elb-sg"
  }
}
