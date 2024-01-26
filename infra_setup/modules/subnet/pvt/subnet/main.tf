
resource "aws_subnet" "blue_pvt_subnet" {
  vpc_id            = var.vpc_id
  cidr_block        = var.blue_pvt_subnet_cidr
  availability_zone = var.blue_az

  tags = {
    Name = "${var.name}-blue-pvt-subnet"
  }
}

resource "aws_subnet" "green_pvt_subnet" {
  vpc_id            = var.vpc_id
  cidr_block        = var.green_pvt_subnet_cidr
  availability_zone = var.green_az

  tags = {
    Name = "${var.name}-green-pvt-subnet"
  }
}

