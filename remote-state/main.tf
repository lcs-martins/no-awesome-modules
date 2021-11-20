module "storage" {
  source  = "../modules/storage/"
  project = var.project
  region  = var.region
  zone    = var.zone
  env     = var.env
  storage = var.storage
}