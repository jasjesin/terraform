variable "name" {
  description = "This is a mandatory input"
}

# mandatory inputs for VPC
variable "region" {
  description = "This is a mandatory input"
}

variable "cidr_block" {
  description = "This is a mandatory input"
}

# mandatory inputs for subnet
variable "blue_az" {
  description = "This is a mandatory input"
}

variable "green_az" {
  description = "This is a mandatory input"
}

# mandatory arguments for public subnet
variable "blue_public_subnet_cidr" {
  description = "This is a mandatory input"
}

variable "green_public_subnet_cidr" {
  description = "This is a mandatory input"
}

# mandatory arguments for pvt subnet
variable "blue_pvt_subnet_cidr" {
  description = "This is a mandatory input"
}

variable "green_pvt_subnet_cidr" {
  description = "This is a mandatory input"
}

# mandatory arguments for EC2 instance
variable "environment" {
  description = "This is a mandatory input"
}
/*
variable "independent" {
  description = "This is a mandatory input"
}

variable "subnet_ids" {
  description = "This is a mandatory input"
}
*/