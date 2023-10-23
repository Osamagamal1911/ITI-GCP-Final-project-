resource "google_compute_network" "vpc_network" {
  name                    = "project-vpc"
  auto_create_subnetworks = false
}
