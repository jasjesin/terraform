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
    icmp    = "icmp"
  }
}

variable "port" {
  type = map(number)
  default = {
    https  = 443
    http   = 80
    sftp   = 22
    egress = 0
    icmp   = 8
  }
}

variable "cidr_rt" {
  default = "0.0.0.0/0"
}
