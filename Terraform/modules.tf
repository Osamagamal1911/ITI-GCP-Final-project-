#Passing Modules Inputs Arguments
module "network_module" {
  source       = "./Network"
  subnets_cidr = var.subnets_cidr_list
  regions      = var.regions_list
}

module "IAM_module" {
  source        = "./IAM"
  project_id    = var.project_id
  vm_roles      = var.vm_roles
  cluster_roles = var.cluster_roles
}

module "compute_module" {
  source            = "./Compute"
  instance_service_account = module.IAM_module.instance_service_account
  vpc_network  = module.network_module.vpc_network
  vm_subnet         = module.network_module.subnets_list[0].name
  vm_region         = var.regions_list[0]
}

module "storage_module" {
  source       = "./Storage"
  subnets_list = module.network_module.subnets_list
}

module "GKE_module" {
  source           = "./GKE"
  vpc_network = module.network_module.vpc_network
  subnets_list     = module.network_module.subnets_list
  cluster_service_account = module.IAM_module.cluster_service_account
  
}