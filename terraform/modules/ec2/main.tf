locals {
  name_prefix = "${var.project_name}-${var.environment}"
}

# Frontend Instance (Vote + Result)
resource "aws_instance" "frontend" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = [var.public_sg_id]
  key_name               = var.key_pair_name

  associate_public_ip_address = true

  tags = {
    Name = "${local.name_prefix}-frontend"
  }
}

# Backend Instance (Redis + Worker)
resource "aws_instance" "backend" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.private_subnet_id
  vpc_security_group_ids = [var.private_sg_id]
  key_name               = var.key_pair_name

  tags = {
    Name = "${local.name_prefix}-backend"
  }
}

# Database Instance (PostgreSQL)
resource "aws_instance" "database" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.private_subnet_id
  vpc_security_group_ids = [var.database_sg_id]
  key_name               = var.key_pair_name

  tags = {
    Name = "${local.name_prefix}-database"
  }
}