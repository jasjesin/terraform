output "blue_pvt_subnet_rt_id" {
  value = aws_route_table.blue_pvt_rt.id
}

output "green_pvt_subnet_rt_id" {
  value = aws_route_table.green_pvt_rt.id
}

output "blue_nat_gw_id" {
  value = module.nat_gw.blue_nat_gw_id
}

output "green_nat_gw_id" {
  value = module.nat_gw.green_nat_gw_id
}

output "blue_eip_id" {
  value = module.nat_gw.blue_eip_id
}

output "green_eip_id" {
  value = module.nat_gw.green_eip_id
}