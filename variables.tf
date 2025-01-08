variable "project_id" {
  description = "The GCP project ID."
  type        = string
}

variable "region" {
  description = "The GCP region."
  type        = string
}

variable "deploy_vpc" {
  description = "Whether to deploy the VPC."
  type        = bool
  default     = false
}

variable "deploy_buckets" {
  description = "Whether to deploy storage buckets."
  type        = bool
  default     = false
}

variable "vpc_name" {
  description = "The name of the VPC."
  type        = string
}

variable "auto_create_subnetworks" {
  description = "Whether to auto-create subnetworks."
  type        = bool
}

variable "create_subnet" {
  description = "Whether to create subnet."
  type        = bool
}

variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
}

variable "ip_range" {
  description = "The IP range of the subnet."
  type        = string
}

variable "allow_firewall_rules" {
  description = "Whether to allow firewall rules."
  type        = bool
}

variable "regions" {
  description = "The regions for the subnets."
  type        = list(string)
}

variable "buckets" {
  description = "A list of bucket configurations"
  type = list(object({
    name                     = string
    location                 = string
    storage_class            = string
    bucket_lifecycle_age     = number
    bucket_versioning        = bool
    public_access_prevention = bool
  }))
}

