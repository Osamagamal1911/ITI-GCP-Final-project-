resource "google_compute_instance" "management-instance" {
  name                      = "management-instance"
  machine_type              = "e2-medium"
  zone                      = "${var.vm_region}-b"
  tags                      = ["final-project"]
  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network    = var.vpc_network
    subnetwork = var.vm_subnet
   
  }

  metadata_startup_script = file("./Compute/startup_script.sh")

  service_account {
    email  = var.instance_service_account
    scopes = ["cloud-platform"]
  }
}