# This module is NOT TESTED YET

module "tg" {
  source = "./tg"

  name    = var.name
  vpc_id  = var.vpc_id
  ec2_ids = data.aws_instances.ec2_ids.*.id
}

module "sg" {
  source = "./sg"

  name   = var.name
  vpc_id = var.vpc_id
}

module "lc" {
  source = "./lc"

  name = var.name
  environment = var.environment
  ami_id = data.aws_ami.app_ami.id
  sg_id = module.sg.asg_sg_id

  depends_on = [ module.sg ]
}

resource "aws_autoscaling_group" "asg" {
  launch_configuration = module.lc.lc_id
  min_size             = var.min
  max_size             = var.max
  target_group_arns    = ["${module.tg.tg_arn}"]
  vpc_zone_identifier  = data.aws_subnets.public_subnet.*.id

  tag {
    key                 = var.key
    value               = "${var.name}-asg"
    propagate_at_launch = true
  }
}

