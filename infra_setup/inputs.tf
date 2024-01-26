variable "name" {
  description = "This is a mandatory input"
}

# --------------------------------------------------------
# mandatory arguments for IAM setup
# --------------------------------------------------------
variable "users" {
  description = "This is a mandatory input"
  type        = list(string)
}

variable "group" {
  description = "This is a mandatory input"
}

variable "policy_name" {
  description = "This is a mandatory input"
}

# --------------------------------------------------------
# mandatory inputs for VPC
# --------------------------------------------------------
variable "region" {
  description = "This is a mandatory input"
}

variable "vpc_id" {
  default = null
}

variable "cidr_block" {
  description = "This is a mandatory input"
}

# --------------------------------------------------------
# mandatory inputs for subnet
# --------------------------------------------------------
variable "blue_az" {
  description = "This is a mandatory input"
}

variable "green_az" {
  description = "This is a mandatory input"
}

# --------------------------------------------------------
# mandatory arguments for public subnet
# --------------------------------------------------------
variable "blue_public_subnet_cidr" {
  description = "This is a mandatory input"
}

variable "green_public_subnet_cidr" {
  description = "This is a mandatory input"
}

# --------------------------------------------------------
# mandatory arguments for pvt subnet
# --------------------------------------------------------
variable "blue_pvt_subnet_cidr" {
  description = "This is a mandatory input"
}

variable "green_pvt_subnet_cidr" {
  description = "This is a mandatory input"
}

# --------------------------------------------------------
# mandatory arguments for EC2 instance
# --------------------------------------------------------
variable "environment" {
  description = "This is a mandatory input"
}
/*
variable "independent" {
  description = "This is a mandatory input"
}

variable "subnet_ids" {
  description = "This is a mandatory input"
}
*/

# --------------------------------------------------------
# mandatory arguments for ASG setup
# --------------------------------------------------------
variable "min" {
  description = "This is a mandatory input"
}

variable "max" {
  description = "This is a mandatory input"
}

# --------------------------------------------------------
# mandatory arguments for RDS instance
# --------------------------------------------------------
variable "rds_storage" {
  description = "This is a mandatory input"
}

variable "rds_engine" {
  description = "This is a mandatory input"
}

variable "rds_family" {
  description = "This is a mandatory input"
}

variable "rds_instance_class" {
  description = "This is a mandatory input"
}

variable "rds_user" {
  description = "This is a mandatory input"
}
