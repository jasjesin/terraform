data "aws_subnets" "pvt_subnet" {
  filter {
    name   = "vpc-id"
    values = [var.vpc_id]
  }

  filter {
    name   = "tag:Name"
    values = ["${var.name}-blue-pvt-subnet", "${var.name}-green-pvt-subnet"]
  }
}
