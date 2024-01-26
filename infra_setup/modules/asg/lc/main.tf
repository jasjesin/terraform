resource "aws_launch_configuration" "lc" {
  name_prefix                 = "${var.name}-lc-"
  image_id                    = var.ami_id
  instance_type               = lookup(var.instance_type, "${var.environment}")
  security_groups             = ["${var.sg_id}"]
  associate_public_ip_address = var.associate_public_ip_address
  user_data                   = file("${path.module}/../common/user_data/svr_setup.sh")

  lifecycle {
    create_before_destroy = true
  }

}