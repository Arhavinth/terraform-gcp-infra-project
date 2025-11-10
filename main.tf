provider "google" {
  project = var.project_id
  region  = var.region
}

module "network" {
  source     = "./modules/network"
  project_id = var.project_id
  region     = var.region
}

module "firewall" {
  source  = "./modules/firewall"
  network = module.network.vpc_name
}

module "compute" {
  source       = "./modules/compute"
  zone         = var.zone
  machine_type = var.vm_machine_type
  instance_count     = var.instance_count
  network      = module.network.vpc_self_link
  subnetwork   = module.network.subnets_self_links[0]
}

module "storage_bucket" {
  source       = "./modules/storage"
  bucket_name  = var.storage_bucket_name
}

module "database" {
  source   = "./modules/database"
  db_name  = var.db_name
  db_user  = var.db_user
  db_password = var.db_password   # <-- add this
  region = var.region
  network  = module.network.vpc_self_link
}


