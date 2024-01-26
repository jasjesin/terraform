module "sg" {
  source = "./sg"

  name   = var.name
  vpc_id = var.vpc_id
}

module "rds_subnet_grp" {
  source = "./subnet"

  name       = var.name
  subnet_ids = data.aws_subnets.pvt_subnet.*.id
}

resource "aws_db_instance" "rds" {
  identifier                  = "${var.name}-mysql"
  allocated_storage           = var.rds_storage
  engine                      = var.rds_engine
  instance_class              = var.rds_instance_class
  manage_master_user_password = var.manage_master_user_password
  db_name                     = "${var.name}-rds"
  username                    = var.rds_user
  db_subnet_group_name        = module.rds_subnet_grp.rds_subnet_grp_id
  vpc_security_group_ids      = ["${module.sg.rds_sg_id}"]
  skip_final_snapshot         = var.skip_final_snapshot
  final_snapshot_identifier   = var.final_snapshot_identifier

  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Name = "${var.name}-rds"
  }

}