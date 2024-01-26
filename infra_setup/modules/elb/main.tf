# This module has some BUGS that need to be fixed

module "sg" {
  source = "./sg"

  name   = var.name
  vpc_id = var.vpc_id
}

#   count     = length(data.aws_subnets.public_subnet.ids)
#  subnet_id = data.aws_subnets.public_subnet.ids[count.index]

resource "aws_lb" "elb" {
  subnets         = data.aws_subnets.public_subnet.*.id
  security_groups = [ module.sg.elb_sg_id ]

  tags = {
    Name = "${var.name}-elb"
  }

  depends_on = [ module.sg ]
}

module "tg" {
  source = "./tg"

  name    = var.name
  vpc_id  = var.vpc_id
  ec2_ids = data.aws_instances.ec2_ids.*.id
}

module "listener" {
  source = "./listener"

  elb_arn = aws_lb.elb.arn
  tg_arn  = module.tg.tg_arn

  depends_on = [ module.tg ]
}