
resource "aws_route_table_association" "blue_public" {
  subnet_id      = var.blue_public_subnet_id
  route_table_id = var.blue_public_subnet_rt_id
}

resource "aws_route_table_association" "green_public" {
  subnet_id      = var.green_public_subnet_id
  route_table_id = var.green_public_subnet_rt_id
}
