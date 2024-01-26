output "ec2" {
  value = aws_instance.ec2
}

output "sg_id" {
  value = module.sg.ec2_sg_id
}