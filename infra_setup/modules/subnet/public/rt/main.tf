
resource "aws_route_table" "blue_public_rt" {
  vpc_id = var.vpc_id
  route {
    cidr_block = var.cidr_rt
    gateway_id = var.igw_id
  }

  tags = {
    Name = "${var.name}-blue-public-rt"
  }
}

resource "aws_route_table" "green_public_rt" {
  vpc_id = var.vpc_id
  route {
    cidr_block = var.cidr_rt
    gateway_id = var.igw_id
  }

  tags = {
    Name = "${var.name}-green-public-rt"
  }
}
