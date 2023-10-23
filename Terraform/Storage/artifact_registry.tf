resource "google_artifact_registry_repository" "images" {
  location      = var.subnets_list[0].region
  repository_id = "images"
  description   = "Docker Repository"
  format        = "DOCKER"
}