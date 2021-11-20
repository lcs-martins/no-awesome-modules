# deploy vpc module
module "vpc" {
  source  = "./modules/vpc/"
  project = var.project
  region  = var.region
  zone    = var.zone
  env     = var.env
  network = var.network
}
# data block to return values from network
data "google_compute_network" "vpc" {
  depends_on = [module.vpc]
  name       = "${var.project}-vpc"
}
# data block to return values from subnetwork
data "google_compute_subnetwork" "subnet" {
  depends_on = [module.vpc]
  name       = "${var.project}-subnet-${var.env}"
}