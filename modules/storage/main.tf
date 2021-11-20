resource "google_storage_bucket" "storage" {
  location      = var.region
  force_destroy = var.force_destroy
  for_each      = var.storage
  name          = each.value.name
  storage_class = each.value.storage_class
}
