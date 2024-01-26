output "elb_id" {
  value = aws_lb.elb.id
}

output "sg_id" {
  value = module.sg.elb_sg_id
}

output "tg_id" {
  value = module.tg.tg_id
}

output "attach_tg_id" {
  value = module.tg.attach_tg_id
}

output "listener_id" {
  value = module.listener.listener_id
}
