
output "vpc_id" {
  value = module.vpc.vpc_id
}

output "igw_id" {
  value = module.vpc.igw_id
}

output "igw_vpc_id" {
  value = module.vpc.igw_vpc_id
}

output "default_rt_id" {
  value = module.vpc.default_rt_id
}

output "default_rt_vpc_id" {
  value = module.vpc.default_rt_vpc_id
}

output "blue_public_subnet_id" {
  value = module.subnet.blue_public_subnet_id
}

output "blue_pvt_subnet_id" {
  value = module.subnet.blue_pvt_subnet_id
}

output "green_public_subnet_id" {
  value = module.subnet.green_public_subnet_id
}

output "green_pvt_subnet_id" {
  value = module.subnet.green_pvt_subnet_id
}

output "blue_nat_gw_id" {
  value = module.subnet.blue_nat_gw_id
}

output "green_nat_gw_id" {
  value = module.subnet.green_nat_gw_id
}

output "blue_eip_id" {
  value = module.subnet.blue_eip_id
}

output "green_eip_id" {
  value = module.subnet.green_eip_id
}
/*
output "ec2_id" {
  value = module.ec2.ec2
}
*/
output "sg_id" {
  value = module.ec2.sg_id
}
