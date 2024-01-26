variable "name" {
  description = "This value needs to be fetched from parent module"
}

variable "vpc_id" {
  description = "This value needs to be fetched from parent module"
}

variable "blue_az" {
  description = "This value needs to be fetched from parent module"
}

variable "blue_public_subnet_cidr" {
  description = "This value needs to be fetched from parent module"
}

variable "green_az" {
  description = "This value needs to be fetched from parent module"
}

variable "green_public_subnet_cidr" {
  description = "This value needs to be fetched from parent module"
}

variable "map_public_ip_on_launch" {
  default = true
}