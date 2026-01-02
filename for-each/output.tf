output "instance_ami" {
  # Returns: { "dev" = "10.0.1.5", "prod" = "10.0.1.9", ... }
  value = { for k, v in aws_instance.main : k => v.ami }
}

output "instance_ids" {
  # Returns: { "dev" = "10.0.1.5", "prod" = "10.0.1.9", ... }
  value = { for k, v in aws_instance.main : k => v.id }
}

output "instance_ips" {
  # Returns: { "dev" = "10.0.1.5", "prod" = "10.0.1.9", ... }
  value = { for k, v in aws_instance.main : k => v.private_ip }
}

output "instance_tags" {
  # Returns: { "dev" = "10.0.1.5", "prod" = "10.0.1.9", ... }
  value = { for k, v in aws_instance.main : k => v.tags_all }
}

output "uppercased_names" {
  value = [for name in var.names : upper(name)] # for dongüsü değişkenleri sıra ile çekerek fonksiyonu uyguluyor.
}

output "region_names" {
  value = [for region, name in var.region_map : "${region} is in ${name}"]
}

output "even_numbers" {
  value = [for num in var.numbers : num if num % 2 == 0]
}

output "us_regions" {
  value = { for region, name in var.region_map : region => name if startswith(region, "us-") }
}