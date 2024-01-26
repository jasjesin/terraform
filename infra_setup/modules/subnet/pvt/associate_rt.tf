
resource "aws_route_table_association" "blue_pvt" {
  subnet_id      = var.blue_pvt_subnet_id
  route_table_id = var.blue_pvt_subnet_rt_id
}

resource "aws_route_table_association" "green_pvt" {
  subnet_id      = var.green_pvt_subnet_id
  route_table_id = var.green_pvt_subnet_rt_id
}
