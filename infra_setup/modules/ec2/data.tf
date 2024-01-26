data "aws_subnets" "public_subnet" {
  filter {
    name   = "vpc-id"
    values = [var.vpc_id]
  }

  filter {
    name   = "tag:Name"
    values = ["${var.name}-blue-public-subnet", "${var.name}-green-public-subnet"]
  }
}

data "aws_ami" "app_ami" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*"]
  }
}
