output "blue_public_subnet_rt_id" {
  value = aws_route_table.blue_public_rt.id
}

output "green_public_subnet_rt_id" {
  value = aws_route_table.green_public_rt.id
}
