# Configure the Google Cloud provider
provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = var.credentials
}

# ... (rest of your Terraform configuration) ...

# Create a Cloud Storage bucket
resource "google_storage_bucket" "django_bucket" {
  name     = "backendserver"
  location = var.region
}

# Create a Cloud Run service
resource "google_cloud_run_service" "django_service" {
  name     = "app"
  location = var.region
  # ... (rest of the resource configuration)
}

variable "project_id" {
  description = "GCP project ID"
  default     = "your-project-id"
}

variable "region" {
  description = "GCPREGION to create resources in"
  default     = "us-central1"
}

# Google Cloud Credentials
variable "credentials" {
  description = "Google Cloud Credentials (JSON file content)"
  type        = string
  sensitive   = true
  default     = ""
}