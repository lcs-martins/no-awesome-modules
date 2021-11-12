module "vpc_network" {
  source  = "../modules/vpc/"
  project = var.project
  region  = var.region
  zone    = var.zone
  env     = var.env
  network = var.network
}