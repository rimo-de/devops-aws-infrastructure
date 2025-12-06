locals {
  name_prefix = "${var.project_name}-${var.environment}"
}

# Public Security Group (for Bastion Host - Vote + Result)
resource "aws_security_group" "public" {
  name        = "${local.name_prefix}-public-sg"
  description = "rimo-dev infrastructure project - Public security group for Vote and Result instances"
  vpc_id      = var.vpc_id

  # Allow HTTP
  ingress {
    from_port   = 80
    to_port     = 81
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow HTTPS
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow SSH
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow all outbound
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${local.name_prefix}-public-sg"
  }
}

# Private Security Group (for Redis + Worker)
resource "aws_security_group" "private" {
  name        = "${local.name_prefix}-private-sg"
  description = "rimo-dev infrastructure project - Private security group for Redis and Worker instances"
  vpc_id      = var.vpc_id

  # Allow SSH
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
     security_groups = [aws_security_group.public.id]
  }

  # Allow traffic from public security group
  ingress {
    from_port       = 6379
    to_port         = 6379
    protocol        = "tcp"
    security_groups = [aws_security_group.public.id]
  }

  # Allow all outbound
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${local.name_prefix}-private-sg"
  }
}

# Database Security Group (for PostgreSQL)
resource "aws_security_group" "database" {
  name        = "${local.name_prefix}-database-sg"
  description = "rimo-dev infrastructure project - Database security group for PostgreSQL"
  vpc_id      = var.vpc_id

  # Allow SSH
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    security_groups = [aws_security_group.public.id]
  }

  # Allow PostgreSQL (5432) from private security group only
  ingress {
    from_port       = 5432
    to_port         = 5432
    protocol        = "tcp"
    security_groups = [aws_security_group.private.id]
  }

  # Allow all outbound
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${local.name_prefix}-database-sg"
  }
}
