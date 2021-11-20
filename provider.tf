provider "google" {
  credentials = file("${var.credentials}")
  project     = var.project
  region      = var.region
  zone        = var.zone
}

terraform {
  backend "gcs" {
    credentials = "../temporario/credentials.json"
    bucket      = "remote-state-test"
    prefix      = "terraform/state"
  }
}