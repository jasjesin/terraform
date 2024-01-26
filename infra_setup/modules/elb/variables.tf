variable "name" {
  description = "This value needs to be fetched from parent module"
}

variable "vpc_id" {
  description = "This value needs to be fetched from parent module"
}

/*
variable "subnet_ids" {
  description = "This value needs to be fetched from parent module, if independent is set to true"
  type        = list(string)
}
*/