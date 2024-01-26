# mandatory arguments for subnet
variable "name" {
  description = "This value needs to be fetched from parent module"
}

variable "vpc_id" {
  description = "This value needs to be fetched from parent module"
}

variable "blue_az" {
  description = "This value needs to be fetched from parent module"
}

variable "green_az" {
  description = "This value needs to be fetched from parent module"
}

# mandatory arguents for public subnet & NACL
variable "blue_public_subnet_cidr" {
  description = "This value needs to be fetched from parent module"
}

variable "green_public_subnet_cidr" {
  description = "This value needs to be fetched from parent module"
}

# mandatory arguents for routing table
variable "igw_id" {
  description = "This value needs to be fetched from parent module"
}

# mandatory arguents for pvt subnet
variable "blue_pvt_subnet_cidr" {
  description = "This value needs to be fetched from parent module"
}

variable "green_pvt_subnet_cidr" {
  description = "This value needs to be fetched from parent module"
}
