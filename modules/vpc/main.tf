resource "google_compute_network" "vpc_network" {
  name                    = var.vpc_name
  auto_create_subnetworks  = var.auto_create_subnetworks
}

resource "google_compute_subnetwork" "subnet" {
  count               = length(var.regions)
  name                = "subnet-${var.regions[count.index]}"
  region              = var.regions[count.index]
  network             = google_compute_network.vpc_network.id
  ip_cidr_range       = "10.0.${count.index}.0/24"
  private_ip_google_access = true
}

resource "google_compute_firewall" "firewall" {
  count        = var.allow_firewall_rules ? 1 : 0
  name         = "allow-all"
  network      = google_compute_network.vpc_network.id
  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }
  source_ranges = ["0.0.0.0/0"]
  direction     = "INGRESS"
  priority      = 1000
}

