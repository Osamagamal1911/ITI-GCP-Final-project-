resource "google_compute_subnetwork" "subnets" {
  count         = length(var.subnets_cidr)
  name          = "subnet-${count.index}"
  ip_cidr_range = var.subnets_cidr[count.index]
  region        = var.regions[count.index]
  network       = google_compute_network.vpc_network.id
}
