output "storage" {
  value       = google_storage_bucket.storage[*]
  description = "Atributos do storage"
}
