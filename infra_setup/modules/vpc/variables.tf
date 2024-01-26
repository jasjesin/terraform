variable "name" {
  description = "This value needs to be fetched from parent module"
}

variable "cidr_block" {
  description = "This value needs to be fetched from parent module"
}

variable "instance_tenancy" {
  default = "default"
}

variable "enable_dns_hostnames" {
  default = true
}

variable "enable_dns_support" {
  default = true
}
