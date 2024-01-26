
resource "aws_subnet" "blue_public_subnet" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.blue_public_subnet_cidr
  availability_zone       = var.blue_az
  map_public_ip_on_launch = var.map_public_ip_on_launch

  tags = {
    Name = "${var.name}-blue-public-subnet"
  }
}

resource "aws_subnet" "green_public_subnet" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.green_public_subnet_cidr
  availability_zone       = var.green_az
  map_public_ip_on_launch = var.map_public_ip_on_launch

  tags = {
    Name = "${var.name}-green-public-subnet"
  }
}
