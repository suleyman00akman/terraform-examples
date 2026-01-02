output "instance_ami" {
  value = aws_instance.main.*.ami
}

output "instance_ids" {
  value = aws_instance.main.*.id
}

output "instance_ips" {
  value = aws_instance.main.*.private_ip
}

output "instance_tags" {
  value = aws_instance.main.*.tags_all
}