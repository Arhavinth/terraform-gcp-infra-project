resource "google_storage_bucket" "bucket" {
name = var.bucket_name
location = "us"
force_destroy = true
versioning {
enabled = true
}
}

output "storage_bucket" {

value = google_storage_bucket.bucket.name
}

