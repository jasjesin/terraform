resource "aws_db_parameter_group" "db_pmtr_grp" {
  name   = "${var.name}-rds-pmtr-grp"
  family = var.rds_family
  parameter {
    name  = var.rds_charset_svr_name
    value = var.rds_charset_svr_value
  }
  parameter {
    name  = var.rds_charset_client_name
    value = var.rds_charset_client_value
  }
}