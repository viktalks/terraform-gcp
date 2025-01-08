variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
}

variable "auto_create_subnetworks" {
  description = "Whether to automatically create subnetworks in all regions"
  type        = bool
  default     = false
}

variable "create_subnet" {
  description = "Whether to create a subnet"
  type        = bool
  default     = false
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
}

variable "ip_range" {
  description = "The IP range for the subnet"
  type        = string
}

variable "allow_firewall_rules" {
  description = "Whether to create firewall rules"
  type        = bool
  default     = false
}

variable "regions" {
  description = "List of regions to create subnets in if auto_create_subnetworks is true."
  type        = list(string)
  default     = ["asia-south1", "us-central1", "europe-west1"]  # Add more regions as needed
}

