# VPC
resource "google_compute_network" "vpc" {
  name                    = "${var.project}-vpc"
  auto_create_subnetworks = "false"
}

# Subnet
resource "google_compute_subnetwork" "subnet" {
  for_each      = var.network
  name          = "${var.project}-subnet-${var.env}"
  region        = var.region
  network       = google_compute_network.vpc.name
  ip_cidr_range = each.value.subnet-ip-range

  dynamic "secondary_ip_range" {
    for_each = "${var.network.network.secondary_ip_range}" == [{}] ? "${var.default-network.secondary_ip_range}" : "${var.network.network.secondary_ip_range[*]}"
    content {
      range_name    = secondary_ip_range.value["range_name"]
      ip_cidr_range = secondary_ip_range.value["ip_cidr_range"]
    }
  }
}