variable "instance_service_account" {
  description = "instance service account"
  type        = string
}

variable "vpc_network" {
  description = "The name of the VPC network"
  type        = string
}

variable "vm_subnet" {
  description = "Subnet name of the instance"
  type        = string
}

variable "vm_region" {
  description = "The VM instance region"
  type        = string
}