resource "aws_eip" "blue_eip" {

  tags = {
    Name = "${var.name}-blue-eip"
  }
}

resource "aws_eip" "green_eip" {

  tags = {
    Name = "${var.name}-green-eip"
  }
}