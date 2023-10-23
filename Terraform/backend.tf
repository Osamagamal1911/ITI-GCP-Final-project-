terraform {
  backend "gcs" {
    bucket = "iti-project-terraform-backend-1553"
    prefix = "terraform/state"
  }
}