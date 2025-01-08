variable "bucket_name" {
  description = "The name of the storage bucket."
  type        = string
}

variable "bucket_location" {
  description = "The location of the storage bucket."
  type        = string
}

variable "storage_class" {
  description = "The storage class of the bucket."
  type        = string
}

variable "bucket_lifecycle_age" {
  description = "The number of days after which to delete objects in the bucket."
  type        = number
}

variable "bucket_versioning" {
  description = "Enable versioning for the bucket."
  type        = bool
}

variable "public_access_prevention" {
  description = "Public access prevention for the bucket."
  type        = bool
}

