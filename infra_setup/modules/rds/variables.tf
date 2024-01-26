variable "name" {
  description = "This value needs to be fetched from parent module"
}

variable "vpc_id" {
  description = "This value needs to be fetched from parent module"
}

variable "rds_storage" {
  description = "This value needs to be fetched from parent module"
}

variable "rds_engine" {
  description = "This value needs to be fetched from parent module"
}

variable "rds_family" {
  description = "This value needs to be fetched from parent module"
}

variable "rds_instance_class" {
  description = "This value needs to be fetched from parent module"
}

variable "rds_user" {
  description = "This value needs to be fetched from parent module"
}

variable "manage_master_user_password" {
  default = "true"
}

variable "skip_final_snapshot" {
  default = "true"
}

variable "final_snapshot_identifier" {
  default = "ignore"
}

variable "rds_charset_svr_name" {
  default = "character_set_server"
}

variable "rds_charset_svr_value" {
  default = "utf8"
}

variable "rds_charset_client_name" {
  default = "character_set_client"
}

variable "rds_charset_client_value" {
  default = "utf8"
}

/*
variable "subnet_ids" {
  description = "This value needs to be fetched from parent module, if independent is set to true"
  type        = list(string)
}
*/