#tfsec:ignore:google-storage-bucket-encryption-customer-key
resource "google_storage_bucket" "demo_bucket" {
  name     = var.bucket_name
  location = var.location

  uniform_bucket_level_access = true
  public_access_prevention    = "enforced"
  force_destroy               = false

  versioning {
    enabled = true
  }
}