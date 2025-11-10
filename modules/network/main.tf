resource "google_compute_network" "vpc" {
name = "tf-main-vpc"
auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnets" {
count = 2
name = "tf-subnet-${count.index}"
ip_cidr_range = "10.0.${count.index}.0/24"
region = var.region
network = google_compute_network.vpc.name
}

output "vpc_name" {
value = google_compute_network.vpc.name
}

output "subnets" {
value = google_compute_subnetwork.subnets[*].name
}

output "vpc_self_link" {
  value = google_compute_network.vpc.self_link
}
output "subnets_self_links" {
  value = google_compute_subnetwork.subnets[*].self_link
}


