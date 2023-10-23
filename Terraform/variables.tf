variable "project_id" {
  type = string
}

variable "work_region" {
  type = string
}

variable "subnets_cidr_list" {
  type = list(any)
}

variable "regions_list" {
  type = list(any)
}

variable "vm_roles" {
  type = list(any)
}

variable "cluster_roles" {
  type = list(any)
}
