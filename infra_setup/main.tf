/*
module "iam" {
  source = "./modules/iam"

  users       = var.users
  group       = var.group
  policy_name = var.policy_name
}
*/

module "vpc" {
  source = "./modules/vpc"

  name       = var.name
  cidr_block = var.cidr_block
}

module "subnet" {
  source = "./modules/subnet"

  name                     = var.name
  vpc_id                   = module.vpc.vpc_id
  igw_id                   = module.vpc.igw_id
  blue_az                  = var.blue_az
  green_az                 = var.green_az
  blue_public_subnet_cidr  = var.blue_public_subnet_cidr
  green_public_subnet_cidr = var.green_public_subnet_cidr
  blue_pvt_subnet_cidr     = var.blue_pvt_subnet_cidr
  green_pvt_subnet_cidr    = var.green_pvt_subnet_cidr

  depends_on = [module.vpc]
}

/*
# This module is dependent on creation of subnet IDs & cannot run independently
module "ec2" {
  source = "./modules/ec2"

  name        = var.name
  vpc_id      = module.vpc.vpc_id
  environment = var.environment

  depends_on = [module.vpc]
}
*/

/*
# This module is dependent on creation of EC2 IDs & cannot run independently
# This module is NOT TESTED yet
# tf validate comes clean
module "elb" {
  source = "./modules/elb"

  name = var.name
  vpc_id = module.vpc.vpc_id

  depends_on = [ module.ec2, module.vpc ]
}
*/

/*
# This module is NOT TESTED yet. 
# tf validate comes clean
module "asg" {
  source = "./modules/asg"

  name        = var.name
  vpc_id      = var.vpc_id
  environment = var.environment
  min         = var.min
  max         = var.max
}
*/

/*
# This module is dependent on creation of subnet IDs & cannot run independently
# This module is NOT TESTED yet
# tf validate comes clean
module "rds" {
  source = "./modules/rds"

  name   = var.name
  vpc_id = var.vpc_id

  rds_family         = var.rds_family
  rds_engine         = var.rds_engine
  rds_instance_class = var.rds_instance_class
  rds_storage        = var.rds_storage
  rds_user           = var.rds_user
}
*/

# one-time bucket creation for backend setup
resource "aws_s3_bucket" "tf_s3" {
  bucket = "tf-sensitive"
}

# one-time bucket creation for backend state lock fix
resource "aws_dynamodb_table" "tf_lock" {
  name         = "tf-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}


# Future enhancements for ec2 module to be used independently
#  vpc_id      = var.vpc_id == null ? data.aws_vpc.default : var.vpc_id
#  vpc_id      = var.vpc_id == null ? (module.vpc.vpc_id == null ? module.vpc.vpc_id : data.aws_vpc.default ) : var.vpc_id
#  independent = var.independent
#  subnet_ids  = var.subnet_ids
#  depends_on = [module.subnet]
