variable "name" {
  description = "This value needs to be fetched from parent module"
}

variable "vpc_id" {
  description = "This value needs to be fetched from parent module"
}

variable "ec2_ids" {
  description = "This value needs to be fetched from parent module"
  type        = list(string)
}

variable "protocol" {
  type = map(string)
  default = {
    regular = "TCP"
  }
}

variable "port" {
  type = map(number)
  default = {
    http = 80
  }
}

variable "tg_type" {
  default = "instance"
}
