output "network" {
  value       = google_compute_network.vpc[*]
  description = "Atributos da network"
}

output "subnetwork" {
  value       = google_compute_subnetwork.subnet[*]
  description = "Atributos da subnetwork"
}