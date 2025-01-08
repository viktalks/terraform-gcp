output "vpc_id" {
  description = "The ID of the VPC."
  value       = google_compute_network.vpc_network.id
}

output "subnet_ids" {
  description = "The IDs of the subnets."
  value       = google_compute_subnetwork.subnet[*].id
}

output "firewall_ids" {
  description = "The IDs of the firewall rules."
  value       = var.allow_firewall_rules ? google_compute_firewall.firewall[*].id : []
}

