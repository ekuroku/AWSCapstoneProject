output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "public_subnet_id" {
  description = "The ID of the public subnet"
  value       = module.vpc.public_subnet_id
}

output "private_subnet_id" {
  description = "The ID of the private subnet"
  value       = module.vpc.private_subnet_id
}

output "security_group_id" {
  description = "The ID of the security group"
  value       = module.security_group.sg_id
}

output "ec2_instance_ids" {
  description = "The IDs of the EC2 instances"
  value       = module.ec2_instances.instance_ids
}

output "ec2_instance_public_ips" {
  description = "The public IP addresses of the EC2 instances"
  value       = module.ec2_instances.instance_public_ips
}