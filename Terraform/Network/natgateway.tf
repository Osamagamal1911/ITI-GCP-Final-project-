resource "google_compute_router" "nat_gateway" {
  name    = "nat-gateway"
  region  = var.regions[0]
  network = google_compute_network.vpc_network.id
}

resource "google_compute_router_nat" "natgateway" {
  name                               = "natgateway"
  router                             = google_compute_router.nat_gateway.name
  region                             = var.regions[0]
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"

  subnetwork {
    name                    = google_compute_subnetwork.subnets[0].id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }
}