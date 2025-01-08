output "vpc_id" {
  description = "The ID of the VPC."
  value       = length(module.vpc) > 0 ? module.vpc[0].vpc_id : null
}

output "subnet_ids" {
  description = "The IDs of the subnets."
  value       = length(module.vpc) > 0 ? module.vpc[0].subnet_ids : []
}

output "firewall_ids" {
  description = "The IDs of the firewall rules."
  value       = length(module.vpc) > 0 ? module.vpc[0].firewall_ids : []
}

output "bucket_names" {
  description = "The names of the storage buckets."
  value       = length(module.storage_buckets) > 0 ? [for bucket in module.storage_buckets : bucket.bucket_name] : []
}

