variable "vpc_network" {
  description = "The name of the VPC network"
  type        = string
}

variable "subnets_list"{
  description = "List of Network Subnets"
  type = list(any)
}



variable "cluster_service_account" {
  description = "GKE Cluster instances service account"
  type        = string
}
