output "frontend_instance_id" {
  description = "Frontend instance ID"
  value       = aws_instance.frontend.id
}

output "frontend_public_ip" {
  description = "Frontend instance public IP address"
  value       = aws_instance.frontend.public_ip
}

output "backend_instance_id" {
  description = "Backend instance ID"
  value       = aws_instance.backend.id
}

output "backend_private_ip" {
  description = "Backend instance private IP address"
  value       = aws_instance.backend.private_ip
}

output "database_instance_id" {
  description = "Database instance ID"
  value       = aws_instance.database.id
}

output "database_private_ip" {
  description = "Database instance private IP address"
  value       = aws_instance.database.private_ip
}