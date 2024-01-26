module "eip" {
  source = "./eip"

  name = var.name
}

resource "aws_nat_gateway" "blue_nat_gw" {
  allocation_id = module.eip.blue_eip_id
  subnet_id     = var.blue_subnet_id

  tags = {
    Name = "${var.name}-blue-nat-gw"
  }

  depends_on = [module.eip]
}


resource "aws_nat_gateway" "green_nat_gw" {
  allocation_id = module.eip.green_eip_id
  subnet_id     = var.green_subnet_id

  tags = {
    Name = "${var.name}-green-nat-gw"
  }

  depends_on = [module.eip]
}