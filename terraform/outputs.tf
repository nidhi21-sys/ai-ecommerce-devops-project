output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.nexvion.id
}
output "public_ip" {
  description = "Public IP address of Nexvion server"
  value       = aws_instance.nexvion.public_ip
}


