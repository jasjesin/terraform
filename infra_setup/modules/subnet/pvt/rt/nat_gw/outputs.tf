output "blue_nat_gw_id" {
  value = aws_nat_gateway.blue_nat_gw.id
}

output "green_nat_gw_id" {
  value = aws_nat_gateway.green_nat_gw.id
}

output "blue_eip_id" {
  value = module.eip.blue_eip_id
}

output "green_eip_id" {
  value = module.eip.green_eip_id
}