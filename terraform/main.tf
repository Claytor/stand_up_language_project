terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.6.0"
    }
  }
}

# Define Credentials
provider "google" {
    credentials = file(var.credentials)
    project     = var.project
}

# Since the bucket exists already, I need to import it
resource "google_storage_bucket" "my_imported_bucket" {
  # The name here is just a placeholder; it will be overwritten by the import command.
  name     = var.gcs_bucket_name
  location = "US"
}

# Upload Objects to GCS Bucket
resource "google_storage_bucket_object" "standup_language_project" {
    for_each = fileset(var.local_folder_path, "**")
    name     = each.value
    bucket   = var.gcs_bucket_name
    source   = "${var.local_folder_path}/${each.value}"
}