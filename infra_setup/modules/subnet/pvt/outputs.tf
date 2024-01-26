output "blue_pvt_association" {
  value = aws_route_table_association.blue_pvt.id
}

output "green_pvt_association" {
  value = aws_route_table_association.green_pvt.id
}
