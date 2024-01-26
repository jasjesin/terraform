output "tg_id" {
  value = module.tg.td_id
}

output "asg_sg_id" {
  value = module.sg.asg_sg_id
}

output "lc_id" {
  value = module.lc.lc_id
}

output "asg_id" {
  value = aws_autoscaling_group.asg.id
}
