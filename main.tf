module "vpc" {
  source              = "./modules/vpc"
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  environment         = var.environment
}

module "security_group" {
  source      = "./modules/security_group"
  vpc_id      = module.vpc.vpc_id
  custom_port = var.custom_port
}

module "ec2_instances" {
  source              = "./modules/ec2"
  instance_count      = var.instance_count
  ami_id             = var.ami_id
  subnet_id          = module.vpc.public_subnet_id
  security_group_ids = [module.security_group.sg_id]
  user_data          = file("${path.module}/configure_system.sh")
}