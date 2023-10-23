resource "google_container_cluster" "cluster"{
  name     = "cluster"
  location = var.subnets_list[1].region
  network = var.vpc_network
  subnetwork = var.subnets_list[1].name

  remove_default_node_pool = true
  initial_node_count       = 1

  deletion_protection = false

  master_authorized_networks_config {
    cidr_blocks {
        cidr_block = var.subnets_list[0].ip_cidr_range
        display_name = var.subnets_list[0].name
    }
  }
  private_cluster_config {
    enable_private_nodes = true
    enable_private_endpoint = true
    master_ipv4_cidr_block = "172.16.0.0/28"

    master_global_access_config{
        enabled =  true
    }
  }
   ip_allocation_policy {
  }
}

resource "google_container_node_pool" "cluster-node-pool" {
  name       = "my-node-pool"
  location = var.subnets_list[1].region
  cluster    = google_container_cluster.cluster.name
  node_count = 1 
 
  node_config {
    preemptible  = true
    machine_type = "e2-medium"
    image_type   = "ubuntu_containerd"
    disk_type = "pd-standard" 
    disk_size_gb = 50
    service_account = var.cluster_service_account
  }
}