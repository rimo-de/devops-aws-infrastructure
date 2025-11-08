variable "project_name" {
  description = "Project name prefix"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "public_key" {
  description = "Public key for AWS key pair"
  type        = string
}

variable "private_key" {
  description = "Private key to save locally in ~/.ssh"
  type        = string
  sensitive   = true # Terraform won't show the private key in logs (security)
}