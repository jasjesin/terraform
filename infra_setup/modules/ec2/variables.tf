variable "name" {
  description = "This value needs to be fetched from parent module"
}

variable "vpc_id" {
  description = "This value needs to be fetched from parent module"
}

variable "environment" {
  description = "This value needs to be fetched from parent module"
}

variable "instance_type" {
  type = map(string)
  default = {
    dev   = "t2.micro"
    stage = "t2.micro"
    prod  = "t2.medium"
  }
}
/*
variable "independent" {
  description = "This value needs to be fetched from parent module"
}

variable "subnet_ids" {
  description = "This value needs to be fetched from parent module, if independent is set to true"
  type        = list(string)
}
*/