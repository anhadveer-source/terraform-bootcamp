terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.0"
    }
  }
}
# Terraform Bootcamp lets test this pipeline
# testing firewall 
provider "google" {
  project = "pdmsec-demo-prj-001"
  region  = "us-central1"
}

module "storage_bucket" {
  source = "./modules/storage_bucket"

  bucket_name = "anhad-tf-demo-20260730-001"
  location    = "US"
}

module "network" {
  source = "./modules/network"

  network_name  = "bootcamp-vpc"
  subnet_name   = "bootcamp-subnet"
  cidr_range    = "10.10.0.0/24"
  region        = "us-central1"
  firewall_name = "allow-http"
}