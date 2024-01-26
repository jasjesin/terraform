
resource "aws_security_group" "asg_sg" {
  name = "${var.name}-asg-sg"
  vpc_id = var.vpc_id

# allow all secure external world traffic
  ingress {
    from_port   = lookup(var.port, "https")
    to_port     = lookup(var.port, "https")
    protocol    = lookup(var.protocol, "ingress")
    cidr_blocks = ["${var.cidr_rt}"]
  }

# allow all external world traffic
  ingress {
    from_port   = lookup(var.port, "http")
    to_port     = lookup(var.port, "http")
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

  ingress {
    from_port   = lookup(var.port, "icmp")
    to_port     = lookup(var.port, "egress")
    protocol    = lookup(var.protocol, "icmp")
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
    Name = "${var.name}-asg-sg"
  }
}

