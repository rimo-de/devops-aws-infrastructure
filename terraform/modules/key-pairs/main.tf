locals {
  name_prefix = "${var.project_name}-${var.environment}"
}

# Generate RSA private key
resource "tls_private_key" "main" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# Create AWS Key Pair from generated public key
resource "aws_key_pair" "main" {
  key_name   = "${local.name_prefix}-keypair"
  public_key = tls_private_key.main.public_key_openssh

  tags = {
    Name = "${local.name_prefix}-keypair"
  }
}

# Save private key to ~/.ssh with correct permissions
resource "local_file" "private_key" {
  content         = tls_private_key.main.private_key_pem
  filename        = pathexpand("~/.ssh/${local.name_prefix}-keypair.pem")
  file_permission = "0600"
}