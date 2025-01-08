resource "google_storage_bucket" "my_bucket" {
  name          = var.bucket_name
  location      = var.bucket_location
  storage_class = var.storage_class

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = var.bucket_lifecycle_age
    }
  }

  versioning {
    enabled = var.bucket_versioning
  }

  # Use null for public access prevention if it's not enabled
  public_access_prevention = var.public_access_prevention ? "ENFORCED" : null
}

