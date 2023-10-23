output "vpc_network" {
  description = "The name of the VPC network"
  value       = google_compute_network.vpc_network.name
}

output "subnets_list" {
  description = "The list of subnets"
  value       = google_compute_subnetwork.subnets
}

