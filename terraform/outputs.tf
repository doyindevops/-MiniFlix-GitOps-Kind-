output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.miniflix_ec2.id
}

output "public_ip" {
  description = "Public IP address of the MiniFlix EC2 instance"
  value       = aws_instance.miniflix_ec2.public_ip
}

output "public_dns" {
  description = "Public DNS name of the MiniFlix EC2 instance"
  value       = aws_instance.miniflix_ec2.public_dns
}

output "security_group_id" {
  description = "Security group ID attached to the EC2 instance"
  value       = aws_security_group.miniflix_sg.id
}
