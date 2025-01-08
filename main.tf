terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

module "vpc" {
  source = "./modules/vpc"
  count  = var.deploy_vpc ? 1 : 0

  project_id             = var.project_id
  region                 = var.region
  vpc_name               = var.vpc_name
  auto_create_subnetworks = var.auto_create_subnetworks
  create_subnet          = var.create_subnet
  subnet_name            = var.subnet_name
  ip_range               = var.ip_range
  allow_firewall_rules   = var.allow_firewall_rules
  regions                = var.regions
}

module "storage_buckets" {
  source  = "./modules/storage_bucket"
  for_each = var.deploy_buckets ? { for bucket in var.buckets : bucket.name => bucket } : {}

  bucket_name             = each.value.name
  bucket_location         = each.value.location
  storage_class           = each.value.storage_class
  bucket_lifecycle_age    = each.value.bucket_lifecycle_age
  bucket_versioning       = each.value.bucket_versioning
  public_access_prevention = each.value.public_access_prevention
}

