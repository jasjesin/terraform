
module "iam" {
  source = "./modules/iam"

  users       = var.users
  group       = var.group
  policy_name = var.policy_name
}

/*
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

module "ec2" {
  source = "./modules/ec2"

  name        = var.name
  vpc_id      = module.vpc.vpc_id
  environment = var.environment
#  independent = var.independent
#  subnet_ids  = var.subnet_ids

  depends_on = [module.subnet]
}
*/

# one-time bucket creation
resource "aws_s3_bucket" "tf_s3" {
  bucket = "tf-sensitive"
}


# one-time bucket creation
resource "aws_dynamodb_table" "tf_lock" {
  name         = "tf-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}