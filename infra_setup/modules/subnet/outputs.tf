output "blue_public_subnet_id" {
  value = module.public_subnet.blue_public_subnet_id
}

output "blue_public_subnet_rt_id" {
  value = module.public_rt.blue_public_subnet_rt_id
}

output "blue_public_association" {
  value = module.associate_public_rt.blue_public_association
}

output "green_public_subnet_id" {
  value = module.public_subnet.green_public_subnet_id
}

output "green_public_subnet_rt_id" {
  value = module.public_rt.green_public_subnet_rt_id
}

output "green_public_association" {
  value = module.associate_public_rt.green_public_association
}

output "blue_pvt_subnet_id" {
  value = module.pvt_subnet.blue_pvt_subnet_id
}

output "blue_pvt_subnet_rt_id" {
  value = module.pvt_rt.blue_pvt_subnet_rt_id
}

output "blue_pvt_association" {
  value = module.associate_pvt_rt.blue_pvt_association
}

output "green_pvt_subnet_id" {
  value = module.pvt_subnet.green_pvt_subnet_id
}

output "green_pvt_subnet_rt_id" {
  value = module.pvt_rt.green_pvt_subnet_rt_id
}

output "green_pvt_association" {
  value = module.associate_pvt_rt.green_pvt_association
}

output "blue_nat_gw_id" {
  value = module.pvt_rt.blue_nat_gw_id
}

output "green_nat_gw_id" {
  value = module.pvt_rt.green_nat_gw_id
}

output "blue_eip_id" {
  value = module.pvt_rt.blue_eip_id
}

output "green_eip_id" {
  value = module.pvt_rt.green_eip_id
}