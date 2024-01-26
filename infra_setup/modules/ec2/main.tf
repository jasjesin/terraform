module "sg" {
  source = "./sg"

  name   = var.name
  vpc_id = var.vpc_id
}

resource "aws_instance" "ec2" {
  #count     = length(var.independent == true ? var.subnet_ids : data.aws_subnets.public_subnet.ids)
  #subnet_id = var.independent == true ? var.subnet_ids[count.index] : data.aws_subnets.public_subnet.ids[count.index]
  count     = length(data.aws_subnets.public_subnet.ids)
  subnet_id = data.aws_subnets.public_subnet.ids[count.index]
  ami       = data.aws_ami.app_ami.id
  #ami                    = "ami-0c7217cdde317cfec" # ubuntu ami in us-east-1
  instance_type          = lookup(var.instance_type, "${var.environment}")
  vpc_security_group_ids = [module.sg.ec2_sg_id]
  user_data              = file("${path.module}/user_data/svr_setup.sh")

  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Name = "${var.name}-ec2"
  }

  depends_on = [module.sg]
}
