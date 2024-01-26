variable "name" {
  description = "This value needs to be fetched from parent module"
}

variable "vpc_id" {
  description = "This value needs to be fetched from parent module"
}

variable "min" {
  description = "This value needs to be fetched from parent module"
}

variable "max" {
  description = "This value needs to be fetched from parent module"
}

variable "key" {
  default = "Name"
}

# variables needed for launch template
variable "ami_id" {
  description = "This value needs to be fetched from parent module"
}

variable "sg_id" {
  description = "This value needs to be fetched from parent module"
}

variable "environment" {
  description = "This value needs to be fetched from parent module"
}


/*
variable "subnet_ids" {
  description = "This value needs to be fetched from parent module, if independent is set to true"
  type        = list(string)
}
*/