
resource "aws_security_group" "rds_sg" {
  name   = "${var.name}-rds-sg"
  vpc_id = var.vpc_id

  # allow all external world traffic
  ingress {
    from_port   = lookup(var.port, "rds")
    to_port     = lookup(var.port, "rds")
    protocol    = lookup(var.protocol, "ingress")
    cidr_blocks = ["${var.cidr_rt}"]
  }

  # allow traffic from bastion host
  ingress {
    from_port   = lookup(var.port, "sftp")
    to_port     = lookup(var.port, "sftp")
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
    Name = "${var.name}-rds-sg"
  }
}
