locals {
  name_prefix = "${var.project_name}-${var.environment}"
}

# Create Key Pair
resource "aws_key_pair" "main" {
  key_name   = "${local.name_prefix}-keypair"
  public_key = var.public_key

  tags = {
    Name = "${local.name_prefix}-keypair"
  }
}

# Save private key to ~/.ssh directory
resource "local_file" "private_key" {
  content         = var.private_key
  filename        = pathexpand("~/.ssh/${local.name_prefix}-private-key.pem")
  file_permission = "0600"
}