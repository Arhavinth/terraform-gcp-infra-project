resource "google_compute_firewall" "allow_ssh" {
name = "allow-ssh"
network = var.network

allow {
protocol = "tcp"
ports = ["22", "80", "443"]
}
source_ranges = ["0.0.0.0/0"]
}

output "firewall_rule" {

value = google_compute_firewall.allow_ssh.name
}
