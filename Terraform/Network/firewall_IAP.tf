resource "google_compute_firewall" "allow_iap" {
  name    = "allow-iap"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["35.235.240.0/20"]
  target_tags   = ["final-project"]  
}
