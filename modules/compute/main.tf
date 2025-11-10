resource "google_compute_instance" "my_vm" {
count = var.instance_count
name = "my-vm-${count.index}"
machine_type = var.machine_type
zone = var.zone

network_interface {

network = var.network
subnetwork = var.subnetwork
access_config {}


}

boot_disk {

initialize_params {

image = "debian-cloud/debian-12"
size = 10
type = "pd-standard"
}
}
}

output "vm_ip" {
value = google_compute_instance.my_vm[*].network_interface[0].access_config[0].nat_ip
}


