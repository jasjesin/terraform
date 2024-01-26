variable "name" {
  description = "This value needs to be fetched from parent module"
}

# mandatory arguments for nat gw
variable "blue_public_subnet_id" {
  description = "This value needs to be fetched from parent module"
}

variable "green_public_subnet_id" {
  description = "This value needs to be fetched from parent module"
}

# mandatory arguments for rt
variable "vpc_id" {
  description = "This value needs to be fetched from parent module"
}

variable "cidr_rt" {
  default = "0.0.0.0/0"
}
