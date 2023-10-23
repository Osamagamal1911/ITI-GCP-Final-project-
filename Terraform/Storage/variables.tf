#Storage Module Input Arguments
variable "subnets_list"{
  description = "List of Network Subnets from the Network module"
  type = list(any)
}