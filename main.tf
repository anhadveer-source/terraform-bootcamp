terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.0"
    }
  }
}

provider "google" {
  project = "pdmsec-demo-prj-001"
  region  = "us-central1"
}

resource "google_storage_bucket" "demo_bucket" {
  name                        = "anhad-tf-demo-20260730-001"
  location                    = "US"
  uniform_bucket_level_access = true
}