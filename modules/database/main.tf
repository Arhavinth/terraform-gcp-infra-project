resource "google_sql_database_instance" "db" {
name = var.db_name
database_version = "POSTGRES_15"
region = var.region


settings {
tier = "db-f1-micro"
ip_configuration {
      private_network = var.network   # <-- full VPC self-link
      ipv4_enabled    = false

}
}
}

resource "google_sql_user" "users" {
name = var.db_user
instance = google_sql_database_instance.db.name
password = var.db_password
}

output "private_ip" {

value = google_sql_database_instance.db.private_ip_address

}


