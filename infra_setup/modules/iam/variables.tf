variable "users" {
  description = "This value needs to be fetched from parent module"
  type        = list(string)
}

variable "group" {
  description = "This value needs to be fetched from parent module"
}

variable "policy_name" {
  description = "This value needs to be fetched from parent module"
}
