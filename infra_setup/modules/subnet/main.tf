module "public_subnet" {
  source = "./public/subnet"

  name                     = var.name
  vpc_id                   = var.vpc_id
  blue_az                  = var.blue_az
  blue_public_subnet_cidr  = var.blue_public_subnet_cidr
  green_az                 = var.green_az
  green_public_subnet_cidr = var.green_public_subnet_cidr

}

module "public_rt" {
  source = "./public/rt"

  name   = var.name
  vpc_id = var.vpc_id
  igw_id = var.igw_id
}

module "associate_public_rt" {
  source = "./public"

  blue_public_subnet_id     = module.public_subnet.blue_public_subnet_id
  blue_public_subnet_rt_id  = module.public_rt.blue_public_subnet_rt_id
  green_public_subnet_id    = module.public_subnet.green_public_subnet_id
  green_public_subnet_rt_id = module.public_rt.green_public_subnet_rt_id

  depends_on = [module.public_subnet, module.public_rt]
}

module "nacl" {
  source = "./nacl"

  name                     = var.name
  vpc_id                   = var.vpc_id
  blue_public_subnet_id    = module.public_subnet.blue_public_subnet_id
  blue_public_subnet_cidr  = var.blue_public_subnet_cidr
  green_public_subnet_id   = module.public_subnet.green_public_subnet_id
  green_public_subnet_cidr = var.green_public_subnet_cidr

  depends_on = [module.associate_public_rt]
}

module "pvt_subnet" {
  source = "./pvt/subnet"

  name                  = var.name
  vpc_id                = var.vpc_id
  blue_az               = var.blue_az
  blue_pvt_subnet_cidr  = var.blue_pvt_subnet_cidr
  green_az              = var.green_az
  green_pvt_subnet_cidr = var.green_pvt_subnet_cidr
}

module "pvt_rt" {
  source = "./pvt/rt"

  name                   = var.name
  vpc_id                 = var.vpc_id
  blue_public_subnet_id  = module.public_subnet.blue_public_subnet_id
  green_public_subnet_id = module.public_subnet.green_public_subnet_id

  depends_on = [module.public_subnet]
}

module "associate_pvt_rt" {
  source = "./pvt"

  blue_pvt_subnet_id     = module.pvt_subnet.blue_pvt_subnet_id
  blue_pvt_subnet_rt_id  = module.pvt_rt.blue_pvt_subnet_rt_id
  green_pvt_subnet_id    = module.pvt_subnet.green_pvt_subnet_id
  green_pvt_subnet_rt_id = module.pvt_rt.green_pvt_subnet_rt_id

  depends_on = [module.pvt_subnet, module.pvt_rt]
}
