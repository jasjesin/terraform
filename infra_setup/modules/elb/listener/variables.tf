variable "elb_arn" {
  description = "This value needs to be fetched from parent module"
}

variable "tg_arn" {
  description = "This value needs to be fetched from parent module"
}

variable "protocol" {
  type = map(string)
  default = {
    regular = "http"
  }
}

variable "port" {
  type = map(number)
  default = {
    http = 80
  }
}

variable "listener_type" {
  default = "forward"
}

variable "stickiness" {
  default = "true"
}

variable "stickiness_duration" {
  default = "28800"
}
