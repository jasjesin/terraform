module "nat_gw" {
  source = "./nat_gw"

  name            = var.name
  blue_subnet_id  = var.blue_public_subnet_id
  green_subnet_id = var.green_public_subnet_id
  vpc_id          = var.vpc_id
}

resource "aws_route_table" "blue_pvt_rt" {
  vpc_id = var.vpc_id
  route {
    cidr_block     = var.cidr_rt
    nat_gateway_id = module.nat_gw.blue_nat_gw_id
  }

  tags = {
    Name = "${var.name}-blue-pvt-rt"
  }

  depends_on = [module.nat_gw]
}

resource "aws_route_table" "green_pvt_rt" {
  vpc_id = var.vpc_id
  route {
    cidr_block     = var.cidr_rt
    nat_gateway_id = module.nat_gw.blue_nat_gw_id
  }

  tags = {
    Name = "${var.name}-green-pvt-rt"
  }

  depends_on = [module.nat_gw]
}