terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.28.0"
    }
  }
}

provider "google" {
  project     = "my-learning-422808"
  region      = "us-central1"
  zone        = "us-central1-a"
  credentials = file("/tmp/credentials.json")
}