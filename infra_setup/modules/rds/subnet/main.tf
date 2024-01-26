resource "aws_db_subnet_group" "rds_subnet_grp" {
  name       = "${var.name}-rds-subnet-grp"
  subnet_ids = var.subnet_ids
}