variable "name" {
  description = "This value needs to be fetched from parent module"
}

variable "vpc_id" {
  description = "This value needs to be fetched from parent module"
}

variable "blue_public_subnet_id" {
  description = "This value needs to be fetched from parent module"
}

variable "blue_public_subnet_cidr" {
  description = "This value needs to be fetched from parent module"
}

variable "green_public_subnet_id" {
  description = "This value needs to be fetched from parent module"
}

variable "green_public_subnet_cidr" {
  description = "This value needs to be fetched from parent module"
}

variable "protocol" {
  default = "tcp"
}

variable "ingress_22" {
  default = "allow"
}

variable "ingress_80" {
  default = "allow"
}

variable "bastion" {
  default = "22"
}

variable "website" {
  default = "80"
}

variable "ephemeral_from" {
  default = "1024"
}

variable "ephemeral_to" {
  default = "65535"
}
