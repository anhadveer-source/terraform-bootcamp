terraform {
  backend "gcs" {
    bucket = "anhad-tf-state-001"
    prefix = "terraform/state"
  }
}