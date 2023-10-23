
variable "project_id" {
  type = string
}

variable "vm_roles"{
  type = list(any)
}

variable "cluster_roles" {
  type = list(any)
}