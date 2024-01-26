output "rds_sg_id" {
  value = module.sg.rds_sg_id
}

output "rds_subnet_grp_id" {
  value = module.rds_subnet_grp.rds_subnet_grp_id
}

output "db_pmtr_grp_id" {
  value = aws_db_parameter_group.db_pmtr_grp.id
}

output "rds_id" {
  value = aws_db_instance.rds.id
}