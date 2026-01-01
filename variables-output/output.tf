output "ec2_instance_id" {
  value = aws_instance.main.id
}

output "ec2_instance_public_ip" {
  value = aws_instance.main.public_ip
}

output "ec2_instance_private_ip" {
  value = aws_instance.main.private_ip
}

output "ec2_instance_placement_group" {
  value = aws_instance.main.placement_group
}