# variables.tf

# Google Cloud Project ID
variable "project_id" {
  description = "Google Cloud Project ID"
  type        = string
}

# Google Cloud Region
variable "region" {
  description = "Google Cloud Region"
  type        = string
  default     = "us-central1"
}

# Google Cloud Credentials
variable "credentials" {
  description = "Google Cloud Credentials (JSON file content)"
  type        = string
  sensitive   = true
}