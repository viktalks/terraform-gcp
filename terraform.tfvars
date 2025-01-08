project_id             = "dpiit-project-poc"
region                 = "asia-south1"

# Enable or disable VPC and Bucket deployment
deploy_vpc             = false  # Set to true to enable VPC deployment
deploy_buckets         = true   # Set to true to enable bucket deployment

# VPC Variables
vpc_name               = "my-vpc1"
auto_create_subnetworks = false
create_subnet          = true
subnet_name            = "my-subnet"
ip_range               = "10.0.0.0/24"
allow_firewall_rules   = true
regions                = ["asia-south1", "us-central1", "europe-west1"]

# Storage Bucket Variables
buckets = [
  {
    name                     = "patlababa10089"
    location                 = "asia-south1"
    storage_class            = "STANDARD"
    bucket_lifecycle_age     = 30
    bucket_versioning        = true
    public_access_prevention = false
  }
]

