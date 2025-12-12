terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./modules/vpc"

  project_name         = var.project_name
  environment          = var.environment
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidr   = var.public_subnet_cidr
  private_subnet_cidr_1 = var.private_subnet_cidr_1
  private_subnet_cidr_2 = var.private_subnet_cidr_2
}

module "security_groups" {
  source = "./modules/security-groups"

  project_name = var.project_name
  environment  = var.environment
  vpc_id       = module.vpc.vpc_id
}

module "key_pairs" {
  source = "./modules/key-pairs"

  project_name = var.project_name
  environment  = var.environment
}

module "ami" {
  source = "./modules/ami"
}

module "ec2" {
  source = "./modules/ec2"

  project_name        = var.project_name
  environment         = var.environment
  ami_id              = module.ami.ami_id
  instance_type       = var.instance_type
  public_subnet_id    = module.vpc.public_subnet_id
  private_subnet_1_id = module.vpc.private_subnet_1_id
  private_subnet_2_id = module.vpc.private_subnet_2_id
  public_sg_id        = module.security_groups.public_sg_id
  private_sg_id       = module.security_groups.private_sg_id
  database_sg_id      = module.security_groups.database_sg_id
  key_pair_name       = module.key_pairs.key_pair_name
}