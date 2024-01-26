variable "name" {
  description = "This value needs to be fetched from parent module"
}

variable "vpc_id" {
  description = "This value needs to be fetched from parent module"
}

variable "protocol" {
  type = map(string)
  default = {
    ingress = "tcp"
    egress  = "-1"
  }
}

variable "port" {
  type = map(number)
  default = {
    rds    = 3306
    sftp   = 22
    egress = 0
  }
}

variable "cidr_rt" {
  default = "0.0.0.0/0"
}
