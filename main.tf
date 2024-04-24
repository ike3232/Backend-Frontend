# Configure the Google Cloud provider
provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = var.credentials
}

# ... (rest of your Terraform configuration) ...

# Create a Cloud Storage bucket
resource "google_storage_bucket" "django_bucket" {
  name = "backendserver"
}

# Create a Cloud Run service
resource "google_cloud_run_service" "django_service" {
  name = "app"

  template {
    spec {
      containers {
        image = "backendweb"
        env {
          name  = "DJANGO_SETTINGS_MODULE"
          value = "your_project.settings"
        }
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}