
output "server_public_ip" {
  value       = aws_instance.devops_server.public_ip
  description = "Public IP address of the EC2 server"
}

output "vpc_id" {
  value       = aws_vpc.devops_vpc.id
  description = "VPC ID"
}
